require 'spec_helper'

describe "shared/_footer" do
  before(:each) do
    render
  end

  it "should have a link to 'About Us'" do
    rendered.should have_css "a[href='#{about_us_path}']"
    rendered.should have_content "About Us"
  end

  it "should have the Grndz logo" do
    rendered.should have_css "span.glyphicon.glyphicon-leaf"
  end

  it "should have a link to 'Contact Us'" do
    rendered.should have_css "a[href='#{about_us_path}']"
    rendered.should have_content "About Us"
  end
end