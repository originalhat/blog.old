require 'spec_helper'

describe ApplicationHelper do
  describe "#active_navbar_element" do
    it "should return the controller and action (in a tidy format)" do
      params[:controller] = "bogus"
      params[:action]     = "death"
      expect(active_navbar_element).to eq("bogus#death")
    end

    it "should return nothing if there is no params" do
      expect(active_navbar_element).to eq(nil)
    end
  end

  describe "#on_homepage?" do
    it "should return true if the current page is the homepage" do
      params[:controller] = "application"
      params[:action]     = "index"
      expect(on_homepage?).to eq(true)
    end

    it "should return false if the current page is not the homepage" do
      params[:controller] = "banana"
      params[:action]     = "bait"
      expect(on_homepage?).to eq(false)
    end
  end

  describe "#banner_title" do
    it "should NOT return a title for homepage" do
      params[:controller] = "application"
      params[:action]     = "index"
      expect(banner_title).to eq(nil)
    end

    it "should return a title for the posts pages" do
      params[:controller] = "posts"
      expect(banner_title).to eq("Grndz Blog")
    end

    it "should return a title for the about page" do
      params[:controller] = "application"
      params[:action]     = "about_page"
      expect(banner_title).to eq("Grndz About")
    end

    it "should return a title for the contact pages" do
      params[:controller] = "application"
      params[:action]     = "contact_page"
      expect(banner_title).to eq("Grndz Contact")
    end
  end
end