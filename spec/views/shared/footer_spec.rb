require 'spec_helper'

describe "shared/_footer" do
  before(:each) do
    render
  end

  it "should have the Grndz logo" do
    rendered.should have_css "span.glyphicon.glyphicon-leaf"
  end
end