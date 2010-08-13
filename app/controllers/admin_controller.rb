class AdminController < ApplicationController
  before_filter :authenticate_user!, except: [:login]
  layout "admin"
  
  def index
    
  end
  
end
