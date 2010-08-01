require 'spec_helper'

describe PagesController do
  integrate_views

  #Delete these examples and add some real ones
  it "should use PagesController" do
    controller.should be_an_instance_of(PagesController)
  end


  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
    
    it "should have the right title" do 
      get 'index'
      response.should have_tag("title", "Dove Tail Admin")
    end
  end
  
  
  
end
