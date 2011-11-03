require "spec_helper"

describe CurrentDayPickupsController do
  describe "routing" do

    it "routes to #index" do
      get("/current_day_pickups").should route_to("current_day_pickups#index")
    end

    it "routes to #new" do
      get("/current_day_pickups/new").should route_to("current_day_pickups#new")
    end

    it "routes to #show" do
      get("/current_day_pickups/1").should route_to("current_day_pickups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/current_day_pickups/1/edit").should route_to("current_day_pickups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/current_day_pickups").should route_to("current_day_pickups#create")
    end

    it "routes to #update" do
      put("/current_day_pickups/1").should route_to("current_day_pickups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/current_day_pickups/1").should route_to("current_day_pickups#destroy", :id => "1")
    end

  end
end
