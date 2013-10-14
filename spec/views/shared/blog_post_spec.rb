require 'spec_helper'
include PostsHelper

describe "shared/_blog_post" do
  let(:post) do
    stub_model(Post, title: "coffee", posted: DateTime.now, author: "dude", body: "<p>stuff</p>")
  end

  before(:each) do
    assign(:post, post)
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

  it "should have the post's author" do
    response.should have_content post.author
  end

  it "should have the post's body without visible HTML" do
    response.should have_content strip_tags post.body
  end
end