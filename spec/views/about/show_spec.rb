require 'spec_helper'

describe 'about/show' do

  before(:each) do
    render
  end

  it "should render some titles" do
    expect(rendered).to include("About")
  end
end