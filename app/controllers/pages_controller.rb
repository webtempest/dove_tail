class PagesController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!
  respond_to :js, :html

  def index
    @pages = Page.all
    @page = Page.find(params[:id]) if params[:id]
    @page = Page.new if @page.nil?
  end

  def create
    @page = Page.new(params[:page])
    if @page.save
      flash[:notice] = "Page created successfully"
    end
    @pages = Page.all
    respond_with @pages
  end
  
  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      flash[:notice] = "Page updated successfully."
      @pages = Page.all
      respond_with @pages
    else
      render action: "index" #render will show the error messages 
    end
  end

  def destroy
    @page = Page.find(params[:id])
    if @page.destroy
      @pages = Page.all
      flash[:notice] = "Page delete successfully."
      respond_with(@pages)
    end
  end

end
