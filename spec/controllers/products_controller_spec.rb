require 'spec_helper'

describe ProductsController do

  let(:user) { User.create!("email" => "arnold@cat.com", "password" => "meowmixer") }

  describe "new product" do
    pending "should have a name field"
    pending "should have a quantity field"
  end

  describe "logged in users" do
    before(:each) do
      sign_in user
    end

    pending "should be able to visit the products page"
  end

  describe "logged out users" do
    pending "should not be able to visit the products page"
  end
end
