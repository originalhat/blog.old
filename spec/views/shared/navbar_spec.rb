require 'spec_helper'

describe "shared/_navbar" do

  describe "nav changes based on current action" do
    it "should be 'active' when on posts#index" do
      params[:controller] = "posts"
      params[:action]     = "index"
      render
      rendered.should have_css "li.active a[href='#{posts_path}']"
    end
  end

  describe "all users" do
    before(:each) do
      render
    end

    it "should have the Grndz logo that links to the home page" do
      rendered.should have_css "a[href='/']"
      rendered.should have_css "span.glyphicon.glyphicon-leaf"
    end

    it "should have a link to 'Home'" do
      rendered.should have_css "a[href='/']"
      rendered.should have_content "Home"
    end

    it "should have a link to 'Blog'" do
      rendered.should have_css "a[href='#{posts_path}']"
      rendered.should have_content "Blog"
    end

    it "should have a link to 'About'" do
      rendered.should have_css "a[href='http://www.grndz.com/about']"
      rendered.should have_content "About"
    end

    it "should have a link to create a 'Contact'" do
      rendered.should have_css "a[href='http://www.grndz.com/contact']"
      rendered.should have_content "Contact"
    end

    it "should have a link to sign the user in" do
      rendered.should have_css "a[href='/admins/sign_in']"
      rendered.should have_css "span.glyphicon.glyphicon-log-in"
    end
  end

  describe "signed in as an admin" do
    before(:each) do
      sign_in FactoryGirl.create(:admin)
      render
    end

    it "should have a link to create a create a 'New Post'" do
      rendered.should have_css "a[href='#{new_post_path}']"
      rendered.should have_css "span.glyphicon.glyphicon-plus"
    end

    it "should have a link to the admin's settings page" do
      rendered.should have_css "a[href='/admins/edit']"
      rendered.should have_css "span.glyphicon.glyphicon-cog"
    end

    it "should have a link to sign the user out" do
      rendered.should have_css "a[data-method='delete']"
      rendered.should have_css "a[href='/admins/sign_out']"
      rendered.should have_css "span.glyphicon.glyphicon-log-out"
    end
  end
end