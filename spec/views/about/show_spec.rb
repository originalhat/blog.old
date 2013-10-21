require 'spec_helper'

describe 'about/show' do

  before(:each) do
    render
  end

  it "should render some titles" do
    expect(rendered).to include("Welcome to Grndz!")
    expect(rendered).to include("Coffee Porn for Your Entertainment")
  end


end