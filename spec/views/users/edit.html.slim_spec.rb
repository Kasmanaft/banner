require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = FactoryGirl.create :user
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_path(@user), :method => "post" do
      assert_select "input#user_password", :name => "user[password]"
    end
  end
end