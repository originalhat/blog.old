require 'spec_helper'

describe Post do
  let!(:first_post) do
    Post.create!(title: "a", author: "b", body: "stuff")
  end

  it "should store the user with the proper values" do
    expect(Post.first).to eq(first_post)
  end

  it "should automatically assign an ID on create" do
    expect(Post.first[:id]).not_to be_nil
  end

  it "should automatically assign a Time on create" do
    expect(Post.first[:created_at]).not_to be_nil
  end
end