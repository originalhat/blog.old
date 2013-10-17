require 'spec_helper'

describe 'about/show' do

  before(:each) do
    render
  end

  it "should render the 'blog_post' partial" do
    expect(rendered).to include("About Us")
  end
end