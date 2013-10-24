require 'spec_helper'

describe "shared/_banner" do
  before(:each) do
    render partial: "shared/banner", locals: {title: "SHALOM!"}
  end

  it "should render the title" do
    rendered.should have_content("SHALOM!")
  end

  it "should have a link to the home page" do
    rendered.should have_css("a[href='/']")
  end
end