require "spec_helper"

describe BannerRotateController do
  describe "routing" do

    it "routes to #show" do
      get("/bs/1?rnd=2131").should route_to("banner_rotate#show", :id => "1")
    end

    it "routes to #click" do
      put("/bc/1").should route_to("banner_rotate#click", :id => "1")
    end
    
  end
end
