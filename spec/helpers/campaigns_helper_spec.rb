require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the CampaignsHelper. For example:
#
# describe CampaignsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe CampaignsHelper do
  describe "campaign exists" do
    it "should return false in campaigns not added yet" do
      helper.should_not be_campaigns_exists
    end

    it "should return true in campaigns exists" do
      campaign = FactoryGirl.create :campaign
      helper.should be_campaigns_exists
    end

  end
end
