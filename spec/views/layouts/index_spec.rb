require 'spec_helper'

describe 'layouts/index' do

  before(:each) do
    render
  end

  it "should render some titles (e.g. it exists)" do
    expect(rendered).to include("We Build Coffee.")
    expect(rendered).to include("Coffee that ACTUALLY Tastes Good.")
    expect(rendered).to include("Plus, it's Painlessly Simple to Get.")
    expect(rendered).to include("Coffee Break for Coffee Porn")
  end

  it "should include an iframe (with a YouTube video)" do
    rendered.should have_css "iframe[src='//www.youtube.com/embed/aidvznATOnk']"
  end
end