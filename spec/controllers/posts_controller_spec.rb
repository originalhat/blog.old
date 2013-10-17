require 'spec_helper'

describe PostsController do
 describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the posts into @posts" do
      post1, post2 = Post.create!, Post.create!
      get :index

      expect(assigns(:posts)).to match_array([post1, post2])
    end
  end

  describe "GET #show" do
    let!(:post) do
      Post.create!(title: "a", author: "b", body: "stuff")
    end

    it "renders the show template" do
      get :show, id: post.id
      expect(response).to render_template("show")
    end
  end

  describe "GET #new" do
    it "loads a new post into @post" do
      get :new
      expect(assigns(:post)).not_to be_nil
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "POST #create" do

    it "raises an exception when missing required params" do
      expect{ post(:create, {}) }.to raise_error ActionController::ParameterMissing
    end

    describe "success" do
      before(:each) do
        post :create, {post: { title: "title", author: "author", body: "text" }}
      end

      it "loads a new post into @post" do
        expect(assigns(:post)).not_to be_nil
      end

      it "loads the title param into @post" do
        expect(assigns(:post)[:title]).to eq("title")
      end

      it "loads the author param into @post" do
        expect(assigns(:post)[:author]).to eq("author")
      end

      it "loads the body param into @post" do
        expect(assigns(:post)[:body]).to eq("text")
      end

      it "saves the post to the database" do
        expect(assigns(:post)).to eq(Post.first)
      end

      it "redirects to the post's page" do
        response.should redirect_to assigns(:post)
      end

      it "loads the proper success notice" do
        expect(flash[:notice]).to eq("Post was successfully created.")
      end
    end

    describe "faliure" do
      # TODO: Figure out a way to make these tests "fail".
      it "doesn't save the post to the database" do
        pending("Failure requires model before_filter checks.")
        expect(Post.first).to be_nil
      end

      it "redirects to the new post page" do
        pending("Failure requires model before_filter checks.")
        response.should redirect_to "/posts/new"
      end

      it "loads the proper success notice" do
        pending("Failure requires model before_filter checks.")
        expect(flash[:notice]).to eq("Post was not created.")
      end
    end
  end
end