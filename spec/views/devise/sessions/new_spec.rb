require 'spec_helper'

describe "devise/sessions/new" do
  before(:each) do
    render
  end

  it "should have a title" do
    rendered.should have_content "Login"
  end

  it "should have an email field" do
    rendered.should have_css "input#admin_email"
  end

  it "should have the correct email placeholder text" do
    rendered.should have_css "input[placeholder='Email']"
  end

  it "should have a password field" do
    rendered.should have_css "input#admin_password"
  end

  it "should have the correct password placeholder text" do
    rendered.should have_css "input[placeholder='Password']"
  end

  it "should have a 'remember me' checkbox" do
    rendered.should have_content "Remember me"
    rendered.should have_css "input[type='checkbox']"
  end

  it "should have a Sign in button" do
    rendered.should have_content "Login"
    rendered.should have_css "input[type='submit']"
  end

  it "should have a link for forgotten passwords" do
    rendered.should have_content "Forgot your password?"
    rendered.should have_css "a[href='/admins/password/new']"
  end
end
