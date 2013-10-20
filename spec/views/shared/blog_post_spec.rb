require 'spec_helper'
include PostsHelper

describe "shared/_blog_post" do
  let(:post) do
    stub_model(Post, author: "Tom", title: "coffee", posted: DateTime.now, body: "<p>stuff</p>")
  end

  let(:admin) do
    stub_model(Admin, first_name: "Devin", last_name: "Brown")
  end

  before(:each) do
    assign(:post, post)
    assign(:admin, admin)
    render
  end

  it "should the post's title that links to itself" do
    response.should have_css "h2"
    response.should have_css "a[href='#{post_path(post)}']"
    response.should have_content post.title
  end

  it "should have the post's date" do
    response.should have_content clean_date post.posted
  end

  it "should have the post's author (current user)" do
    rendered.should have_content "Tom"
  end

  it "should have the post's body without visible HTML" do
    response.should have_content strip_tags post.body
  end
end