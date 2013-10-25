require 'spec_helper'

describe 'layouts/index' do

  before(:each) do
    render
  end

  it "should render some titles (e.g. it exists)" do
    expect(rendered).to include("We Build Coffee.")
    expect(rendered).to include("What's on the Menu?")
    expect(rendered).to include("Meet the Builders")
    expect(rendered).to include("Let the Information Flow!")
    expect(rendered).to include("Some Coffee Porn")
  end

  it "should have a link to the about page" do
    rendered.should have_css("a[href='#{about_path}']")
  end

  it "should have a link to the posts page" do
    rendered.should have_css("a[href='#{posts_path}']")
  end

  it "should have a link to the contact page" do
    rendered.should have_css("a[href='#{contact_path}']")
  end
end