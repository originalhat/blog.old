require 'spec_helper'

describe ApplicationController do
  describe "GET #about_page" do
    it "should render the about_page" do
      get :about_page
      expect(response).to render_template("about/show")
    end
  end
end