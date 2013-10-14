require 'spec_helper'

describe "shared/_navbar" do
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

  it "should have a link to create a create a 'New Post'" do
    rendered.should have_css "a[href='#{new_post_path}']"
    rendered.should have_content "New Post"
  end
end