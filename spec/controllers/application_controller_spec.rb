require 'spec_helper'

describe ApplicationController do
  describe "GET #index" do
    it "should render the index" do
      get :index
      expect(response).to render_template("layouts/index")
    end
  end

  describe "GET #about_page" do
    it "should render the about_page" do
      get :about_page
      expect(response).to render_template("about/show")
    end
  end

  describe "GET #contact_page" do
    it "should render the contact_page" do
      get :contact_page
      expect(response).to render_template("contact/show")
    end
  end
end