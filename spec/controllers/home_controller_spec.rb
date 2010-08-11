require 'spec_helper'

describe HomeController do
  render_views
  
  #INDEX------------------------------------------
  describe "GET 'index'" do
    before(:each) do
      get 'index'
    end
    it ("should be successful"){response.should be_success}
    it ("should have the right title"){response.should have_selector("title", content: "Dove Tail Timbers | Home")}
  end

  #ABOUT------------------------------------------
  describe "GET 'about'" do
    before(:each) do
      get 'about'
    end
    
    it("should be successful"){response.should be_success}
    it("should have the right title"){response.should have_selector("title", content: "Dove Tail Timbers | About")}
  end
  
  #CONTACT------------------------------------------
  describe "GET 'contact'" do
    before(:each) do 
      get 'contact'
    end
    it("should be successful"){response.should be_success}
    it("should have the right title"){response.should have_selector("title", content: "Dove Tail Timbers | Contact")}
  end
end
