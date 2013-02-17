Given /^I have existing campaign "(.*?)"$/ do |name|
  Campaign.create! :name=>name
end
