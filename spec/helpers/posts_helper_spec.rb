require 'spec_helper'

describe PostsHelper do
  describe "clean_date" do
    let(:date_time) { DateTime.new(2013, 10, 14) }
    it "should format a DateTime like: Month DD YYYY" do
      expect(clean_date(date_time)).to eq("October 14 2013")
    end
  end
end