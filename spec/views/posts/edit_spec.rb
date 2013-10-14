require 'spec_helper'

describe 'posts/edit' do
  let(:post) do
    stub_model(Post, title: "coffee", posted: DateTime.now, author: "dude", body: "stuff")
  end

  before(:each) do
    assign(:post, post)
    render
  end

  it "should have a heading" do
    response.should have_css "h1"
    response.should have_content "Editing Post"
  end

  it "should render a form" do
    response.should render_template "posts/_form"
  end

  it "should have a link to 'Back'" do
    response.should have_content "Back"
    response.should have_css "a[href='#{posts_path}']"
  end

  it "should have a link to 'Show'" do
    response.should have_content "Show"
    response.should have_css "a[href='/posts/#{post.id}']"
  end
end