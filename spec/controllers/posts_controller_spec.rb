require 'spec_helper'

describe PostsController do
  describe "INDEX" do
    it "should render the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "assigns @posts" do
      post = Post.create!
      get :index
      expect(assigns(:posts)).to eq([post])
    end
  end
end