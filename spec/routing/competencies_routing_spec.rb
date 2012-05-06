require "spec_helper"

describe CompetenciesController do
  describe "routing" do

    it "routes to #index" do
      get("/competencies").should route_to("competencies#index")
    end

    it "routes to #new" do
      get("/competencies/new").should route_to("competencies#new")
    end

    it "routes to #show" do
      get("/competencies/1").should route_to("competencies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/competencies/1/edit").should route_to("competencies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/competencies").should route_to("competencies#create")
    end

    it "routes to #update" do
      put("/competencies/1").should route_to("competencies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/competencies/1").should route_to("competencies#destroy", :id => "1")
    end

  end
end
