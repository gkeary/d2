require "spec_helper"

describe ArchivesController do
  describe "routing" do

    it "routes to #index" do
      get("/archives").should route_to("archives#index")
    end

    it "routes to #new" do
      get("/archives/new").should route_to("archives#new")
    end

    it "routes to #show" do
      get("/archives/1").should route_to("archives#show", :id => "1")
    end

    it "routes to #edit" do
      get("/archives/1/edit").should route_to("archives#edit", :id => "1")
    end

    it "routes to #create" do
      post("/archives").should route_to("archives#create")
    end

    it "routes to #update" do
      put("/archives/1").should route_to("archives#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/archives/1").should route_to("archives#destroy", :id => "1")
    end

  end
end
