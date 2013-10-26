require 'spec_helper'

describe "devise/registrations/edit" do
  before(:each) do
    render
  end

  it "should have a title" do
    rendered.should have_content "Update Account"
  end

  it "should have an email field" do
    rendered.should have_css "input#admin_email"
    rendered.should have_css "input[placeholder='Update Email']"
  end

  it "should have an old password field" do
    rendered.should have_css "input#admin_current_password"
    rendered.should have_css "input[placeholder='Current Password']"
  end

  it "should have a new password field" do
    rendered.should have_css "input#admin_password"
    rendered.should have_css "input[placeholder='Password']"
  end

  it "should have a new password confirmation field" do
    rendered.should have_css "input#admin_current_password"
    rendered.should have_css "input[placeholder='Password Confirmation']"
  end

  it "should have an update button" do
    rendered.should have_content "Update"
    rendered.should have_css "input[type='submit']"
  end
end