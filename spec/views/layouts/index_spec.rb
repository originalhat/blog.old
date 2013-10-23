require 'spec_helper'

describe 'layouts/index' do

  before(:each) do
    render
  end

  it "should render some titles (e.g. it exists)" do
    expect(rendered).to include("Welcome to Grndz!")
    expect(rendered).to include("Coffee Porn for Your Entertainment")
  end
end