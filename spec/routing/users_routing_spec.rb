require "spec_helper"

describe UsersController do
  describe "routing" do

    it "routes to #edit" do
      get("/users/1/edit").should route_to("users#edit", :id => "1")
    end

    it "routes to #update" do
      put("/users/1").should route_to("users#update", :id => "1")
    end
    
  end
end
