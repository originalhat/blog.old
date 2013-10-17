require 'spec_helper'

describe "shared/_navbar" do
  describe "all users" do
    before(:each) do
      render
    end

    it "should have the Grndz logo that links to the home page" do
      rendered.should have_css "a[href='/']"
      rendered.should have_css "span.glyphicon.glyphicon-leaf"
    end

    it "should have a link to 'About Us'" do
      rendered.should have_css "a[href='#{about_us_path}']"
      rendered.should have_content "About Us"
    end

    it "should have a link to create a 'Contact Us'" do
      rendered.should have_css "a[href='#{about_us_path}']"
      rendered.should have_content "About Us"
    end
  end

  describe "signed in as an admin" do
    before(:each) do
      sign_in FactoryGirl.create(:admin)
      render
    end

    it "should have a link to create a create a 'New Post'" do
      rendered.should have_css "a[href='#{new_post_path}']"
      rendered.should have_content "New Post"
    end

    it "should have a link to the admin's settings page" do
      rendered.should have_css "a[href='/admins/edit']"
      rendered.should have_content "Account"
    end

    it "should have a link to sign the user out" do
      rendered.should have_css "a[data-method='delete']"
      rendered.should have_css "a[href='/admins/sign_out']"
      rendered.should have_content "Sign Out"
    end
  end
end