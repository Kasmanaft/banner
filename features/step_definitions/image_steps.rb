Then /^I should be able to add image to campaign "(.*?)"$/ do |name|
  campaign=Campaign.find_by_name(name)
  current_path.should == new_campaign_image_path(campaign)
end

When /^I attach test image$/ do
  attach_file(:image_file, File.expand_path("../../../spec/support/60.jpeg", __FILE__))
end

Given /^I have existing test campaign with test image$/ do
  @image = FactoryGirl.create :image
end

When /^I visit page for the test campaign$/ do
  visit campaign_path(@image.campaign)
end