require 'spec_helper'

describe PostsHelper do
  describe "clean_date" do
    let(:date_time) { DateTime.new(2013, 10, 14) }

    it "should format a DateTime like: Month DD YYYY" do
      expect(clean_date(date_time)).to eq("October 14 2013")
    end
  end

  describe "clean_author" do
    describe "signed in user" do
      let(:current_admin) do
        FactoryGirl.create(:admin)
      end

      it "should return the current admin name" do
        expect(clean_author).to eq("Arnold Brown")
      end
    end

    describe "non-signed in user" do
      let(:current_admin) do
      end

      it "should return a default name" do
        expect(clean_author).to eq("Mr. Grndz")
      end
    end
  end
end