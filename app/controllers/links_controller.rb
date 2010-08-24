class LinksController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!
  respond_to :js, :html

  def index
    get_link
    get_root_links
    @pages = Page.all
  end
  
  def edit
    @pages = Page.all
    get_link
    get_root_links
    flash[:notice] = "Editing #{@link.title}"
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      flash[:notice] = "Link created successfully"
    end
    get_root_links
  end
  
  def update
    get_link
    if @link.update_attributes(params[:link])
      flash[:notice] = "Link updated successfully."
      redirect_to action: "index"
    end
  end

  def destroy
    @link = Link.find(params[:id])
    if @link.destroy
      get_root_links
      flash[:notice] = "Link delete successfully."
    else
      render action: "index" #render will show the error messages 
    end
  end
  
  def sort
    @root = Link.find_by_title("root")
    @links = Link.root_links_without_root(@root.id)
    @links.each do |link|
      link.position = params['link'].index(link.id.to_s) + 1
      link.save
    end
    render :nothing => true
  end
  
  private
  
  def get_link
    @link = Link.find(params[:id]) if params[:id]
    @link = Link.new if @link.nil?
  end
  
  def get_root_links
    @root = Link.find_by_title("root")
    @root_links_without_root = Link.root_links_without_root(@root.id)
    @root_links_with_root = Link.root_links_with_root(@root.id)
  end
end
