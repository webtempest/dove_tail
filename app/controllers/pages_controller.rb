class PagesController < ApplicationController
  layout "admin"
  active_scaffold :page

  def index
    @title = "Dove Tail Admin"
  end

end
