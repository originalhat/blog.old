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
end