require 'spec_helper'

describe 'posts/show' do

  before(:each) do
    @post = Post.create(title: "coffee", posted: DateTime.now, author: "dude", body: "stuff")
    render
  end

  it "should render the 'blog_post' partial" do
    response.should render_template partial: "shared/_blog_post"
  end

  it "should have a working back button" do
    rendered.should have_css "a[href='#{posts_path}']"
    rendered.should have_content "Back"
  end

  it "should have an working edit button" do
    rendered.should have_css "a[href='#{edit_post_path(@post)}']"
    rendered.should have_content "Back"
  end

  it "should have a working delete button" do
    rendered.should have_css "a[data-method='delete']"
    rendered.should have_css "a[href='/posts/#{@post.id}']"
    rendered.should have_content "Back"
  end
end