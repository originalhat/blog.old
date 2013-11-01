require 'spec_helper'

describe 'info/about' do

  before(:each) do
    render
  end

  it "should render some titles" do
    expect(rendered).to include("Brewing Up a Storm.")
    expect(rendered).to include("The Lowdown")
    expect(rendered).to include("Crafted by Denver's Finest")
  end

  it "should render the header images" do
    rendered.should have_css "img[src='/assets/about/0.jpg']"
    rendered.should have_css "img[src='/assets/about/1.jpg']"
    rendered.should have_css "img[src='/assets/about/2.jpg']"
  end

  it "should have the 'quick-info' content on the page" do
    rendered.should have_content "Founded"
    rendered.should have_content "2013"

    rendered.should have_content "Home Base"
    rendered.should have_content "Denver, CO"

    rendered.should have_content "Grndzers"
    rendered.should have_content "2"
  end

  it "should have a link to the blog" do
    rendered.should have_css "a[href='http://blog.grndz.com']"
  end

  it "should render a partial for DGB" do
    expect(response).to render_template("bios/_dgb")
  end

  it "should render a partial for ERG" do
    expect(response).to render_template("bios/_erg")
  end

  it "should render a partial for THM" do
    expect(response).to render_template("bios/_thm")
  end

  it "should have the banner images visible" do
    rendered.should have_css "img[src='/assets/about/0.jpg']"
    rendered.should have_css "img[src='/assets/about/1.jpg']"
    rendered.should have_css "img[src='/assets/about/2.jpg']"
  end

  it "should not have banner images visible on mobile devices" do
    pending "don't know how to mock the 'browser.mobile?' object / method"
    rendered.should_not have_css "img[src='/assets/about/0.jpg']"
    rendered.should_not have_css "img[src='/assets/about/1.jpg']"
    rendered.should_not have_css "img[src='/assets/about/2.jpg']"
  end
end