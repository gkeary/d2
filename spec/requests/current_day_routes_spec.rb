require 'spec_helper'

describe "CurrentDayRoutes" do
  describe "GET /current_day_routes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get current_day_routes_path
      response.status.should be(200)
    end
  end
end
