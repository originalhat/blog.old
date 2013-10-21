require 'spec_helper'

describe "layouts/application" do
  before(:each) do
    render
  end

  it "should render the google analytics partial" do
    response.should render_template "shared/_google_analytics"
  end
end