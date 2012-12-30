require "spec_helper"

describe SocietiesController do
  describe "routing" do

    it "routes to #index" do
      get("/societies").should route_to("societies#index")
    end

    it "routes to #new" do
      get("/societies/new").should route_to("societies#new")
    end

    it "routes to #show" do
      get("/societies/1").should route_to("societies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/societies/1/edit").should route_to("societies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/societies").should route_to("societies#create")
    end

    it "routes to #update" do
      put("/societies/1").should route_to("societies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/societies/1").should route_to("societies#destroy", :id => "1")
    end

  end
end
