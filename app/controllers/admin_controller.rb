class AdminController < ApplicationController
  before_filter :authenticate_user!, except: [:login]
  
  def index
  end

  def login
  end

  def logout
  end

end
