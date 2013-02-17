Given /^Registered user admin$/ do
  FactoryGirl.create :admin
end

Given /^Signed admin user$/ do
  @user ||= FactoryGirl.create :admin
  visit new_user_session_path
  fill_in "user_email", :with => @user.email
  fill_in "user_password", :with => @user.password
  click_button "Sign in"
end

Given /^I want to edit current user page$/ do
  visit edit_user_path(@user)
end
