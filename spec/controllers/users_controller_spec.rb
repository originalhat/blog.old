require 'spec_helper'

describe UsersController do

  let(:user) { User.create!("email" => "arnold@cat.com", "password" => "meowmixer") }

  describe "new users" do
    pending "should have a name field"
    pending "should have a email field"
    pending "should have a password field"
    pending "should have a password confirmation field"
  end

  describe "logged in users" do
    before(:each) do
      sign_in user
    end

    pending "should be able to visit their users page"
  end

  describe "logged out users" do
    pending "should not be able to visit their users page"
  end
end
