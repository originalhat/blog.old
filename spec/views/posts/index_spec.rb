require 'spec_helper'

describe 'posts/index' do
  before(:each) do
    view.stub(:will_paginate)

    Post.create(title: "a", posted: DateTime.now, author: "db", body: "stuff")
    Post.create(title: "b", posted: DateTime.now, author: "db", body: "stuff")
    Post.create(title: "b", posted: DateTime.now, author: "eg", body: "stuff")
    assign(:posts, Post.order('created_at DESC'))

    render
  end

  it "should render the 'blog_post' partial multiple times for multiple posts" do
    response.should render_template partial: "shared/_blog_post", count: 3
  end
end