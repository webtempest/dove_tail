require 'spec_helper'

describe AdminController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'login'" do
    before(:each){get 'login'}
    it("should be successful"){response.should be_success}
    it("should render a login form"){response.should have_selector("form")} 
  end

  describe "GET 'logout'" do
    it "should be successful" do
      get 'logout'
      response.should be_success
    end
  end

end
