require 'spec_helper'

describe "routing" do

  describe "ApplicationController" do
    it "routes GET / to hit application#index" do
      expect(get: "/").to route_to(controller: "posts", action: "index")
    end

    it "routes GET /about to application#about_page" do
      expect(get: "/about").to route_to(controller: "application", action: "about_page")
    end
  end

  describe "PostsController" do

    it "routes GET /blog to posts#index" do
      expect(get: "/blog").to route_to(controller: "posts", action: "index")
    end

    it "routes GET /posts to hit posts#index" do
      expect(get: "/posts").to route_to(controller: "posts", action: "index")
    end

    it "routes POST /posts to posts#index" do
      expect(post: "/posts").to route_to(controller: "posts", action: "create")
    end

    it "routes GET /posts/new to posts#new" do
      expect(get: "/posts/new").to route_to(controller: "posts", action: "new")
    end

    it "routes GET /posts/:id/edit to posts#edit" do
      expect(get: "/posts/1/edit").to route_to(controller: "posts", action: "edit", id: "1")
    end

    it "routes GET /posts/:id to posts#show" do
      expect(get: "/posts/1").to route_to(controller: "posts", action: "show", id: "1")
    end

    it "routes PATCH /posts/:id to posts#update" do
      expect(patch: "/posts/1").to route_to(controller: "posts", action: "update", id: "1")
    end

    it "routes PUT /posts/:id to posts#update" do
      expect(put: "/posts/1").to route_to(controller: "posts", action: "update", id: "1")
    end

    it "routes DELETE /posts/:id to posts#destroy" do
      expect(delete: "/posts/1").to route_to(controller: "posts", action: "destroy", id: "1")
    end
  end

  describe "Devise/Registrations" do
    it "routes GET /admins/cancel to devise/registrations#cancel" do
      expect(get: "/admins/cancel").to route_to(controller: "devise/registrations", action: "cancel")
    end

    it "routes GET /admins/edit to devise/registrations#edit" do
      expect(get: "/admins/edit").to route_to(controller: "devise/registrations", action: "edit")
    end

    it "routes PATCH /admins to devise/registrations#update" do
      expect(patch: "/admins").to route_to(controller: "devise/registrations", action: "update")
    end

    it "routes PUT /admins to devise/registrations#update" do
      expect(put: "/admins").to route_to(controller: "devise/registrations", action: "update")
    end

    it "routes DELETE /admins to devise/registrations#destroy" do
      expect(delete: "/admins").to route_to(controller: "devise/registrations", action: "destroy")
    end
  end
end