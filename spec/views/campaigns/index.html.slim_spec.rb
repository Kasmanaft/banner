require 'spec_helper'

describe "campaigns/index" do
  before(:each) do
    assign(:campaigns, [
      stub_model(Campaign,
        :name => "Name"
      ),
      stub_model(Campaign,
        :name => "Name"
      )
    ])
  end

  it "renders a list of campaigns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tbody > tr > td ", :text => "Name".to_s, :count => 2
  end
end
