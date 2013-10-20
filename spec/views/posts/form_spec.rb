require 'spec_helper'

describe "posts/_form" do
  let(:post) { stub_model(Post) }

  let(:admin) do
    stub_model(Admin, first_name: "Devin", last_name: "Brown")
  end

  before(:each) do
    assign(:admin, admin)
    assign(:post, post)
    render
  end

  it "should have a title label" do
    rendered.should have_content "Title"
  end

  it "should have a title field" do
    rendered.should have_css "input#post_title"
  end

  it "should have an author label" do
    rendered.should have_content "Author"
  end

  it "should have the current user as the author" do
    rendered.should have_css "input[value='Mr. Grndz']"
  end

  it "should have a body label" do
    rendered.should have_content "Body"
  end

  it "should have a body field" do
    rendered.should have_css "textarea#post_body"
  end

  it "should have a submit button" do
    rendered.should have_css "input[value='Update Post']"
  end
end