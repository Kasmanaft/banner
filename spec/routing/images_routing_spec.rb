require "spec_helper"

describe ImagesController do
  describe "routing" do

    it "routes to #new" do
      get("/campaigns/1/images/new").should route_to("images#new", :campaign_id=>"1")
    end

    it "routes to #edit" do
      get("/campaigns/1/images/1/edit").should route_to("images#edit", :id => "1", :campaign_id=>"1")
    end

    it "routes to #create" do
      post("/campaigns/1/images").should route_to("images#create", :campaign_id=>"1")
    end

    it "routes to #update" do
      put("/campaigns/1/images/1").should route_to("images#update", :id => "1", :campaign_id=>"1")
    end

    it "routes to #destroy" do
      delete("/campaigns/1/images/1").should route_to("images#destroy", :id => "1", :campaign_id=>"1")
    end

  end
end
