require "spec_helper"

describe SolventsController do
  describe "routing" do

    it "routes to #index" do
      get("/solvents").should route_to("solvents#index")
    end

    it "routes to #new" do
      get("/solvents/new").should route_to("solvents#new")
    end

    it "routes to #show" do
      get("/solvents/1").should route_to("solvents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/solvents/1/edit").should route_to("solvents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/solvents").should route_to("solvents#create")
    end

    it "routes to #update" do
      put("/solvents/1").should route_to("solvents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/solvents/1").should route_to("solvents#destroy", :id => "1")
    end

  end
end
