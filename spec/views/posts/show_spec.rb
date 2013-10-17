require 'spec_helper'

describe 'posts/show' do
  let(:post) do
      stub_model(Post, title: "coffee", posted: DateTime.now, author: "dude", body: "stuff")
  end

  before(:each) do
    assign(:post, post)
  end

  describe "all users" do
    before(:each) do
      sign_in FactoryGirl.create(:admin)
      render
    end

    it "should render the 'blog_post' partial" do
      response.should render_template partial: "shared/_blog_post"
    end

    it "should have a working back button" do
      rendered.should have_css "a[href='#{posts_path}']"
      rendered.should have_content "Back"
    end
  end

  describe "signed in as admin" do
    before(:each) do
      sign_in FactoryGirl.create(:admin)
      render
    end

    it "should have an working edit button" do
      rendered.should have_css "a[href='#{edit_post_path(post)}']"
      rendered.should have_content "Edit"
    end

    it "should have a working delete button" do
      rendered.should have_css "a[data-method='delete']"
      rendered.should have_css "a[href='/posts/#{post.id}']"
      rendered.should have_content "Delete"
    end
  end

  describe "NOT signed in as an admin" do

    it "should NOT have an working edit button" do
      rendered.should_not have_css "a[href='#{edit_post_path(post)}']"
      rendered.should_not have_content "Edit"
    end

    it "should NOT have a working delete button" do
      rendered.should_not have_css "a[data-method='delete']"
      rendered.should_not have_css "a[href='/posts/#{post.id}']"
      rendered.should_not have_content "Delete"
    end
  end
end