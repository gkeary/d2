require "spec_helper"

describe CurrentDayRoutesController do
  describe "routing" do

    it "routes to #index" do
      get("/current_day_routes").should route_to("current_day_routes#index")
    end

    it "routes to #new" do
      get("/current_day_routes/new").should route_to("current_day_routes#new")
    end

    it "routes to #show" do
      get("/current_day_routes/1").should route_to("current_day_routes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/current_day_routes/1/edit").should route_to("current_day_routes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/current_day_routes").should route_to("current_day_routes#create")
    end

    it "routes to #update" do
      put("/current_day_routes/1").should route_to("current_day_routes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/current_day_routes/1").should route_to("current_day_routes#destroy", :id => "1")
    end

  end
end
