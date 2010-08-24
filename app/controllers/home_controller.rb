class HomeController < ApplicationController
  def index
    @title = ' | Home'
    @root = Link.find_by_title("root")
    @links = Link.root_links_without_root(@root.id)
    @page = Page.find(@links[0].page_id)
  end

  def about
    @title = ' | About'
  end

  def contact
    @title = ' | Contact'
  end
  
  def switch
    @page = Page.find(params[:id])
  end

end
