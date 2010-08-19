class LinksController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!
  respond_to :js, :html

  def index
    @links = Link.where(parent_id: nil).order("position")
    @link = Link.find(params[:id]) if params[:id]
    @link = Link.new if @link.nil?
    @pages = Page.all
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      flash[:notice] = "Link created successfully"
    end
    @links = Link.all
    respond_with @links
  end
  
  def update
    @link = Link.find(params[:id])
    if @link.update_attributes(params[:link])
      flash[:notice] = "Link updated successfully."
      @links = Link.all
      respond_with @links
    else
      render action: "index" #render will show the error messages 
    end
  end

  def destroy
    @link = Link.find(params[:id])
    if @link.destroy
      @links = Link.all
      flash[:notice] = "Link delete successfully."
      respond_with(@links)
    else
      render action: "index" #render will show the error messages 
    end
  end
  
  def sort
    @links = Link.all
    @links.each do |link|
      link.position = params['link'].index(link.id.to_s) + 1
      link.save
    end
    render :nothing => true
  end
end
