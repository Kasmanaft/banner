require 'spec_helper'

describe "images/new" do
  before(:each) do
    assign(:image, stub_model(Image,
      :file => "",
      :remote_file_url =>"http://localhost/13",
      :max_show => "13",
      :show => "",
      :click => "",
      :campaign_id => "",
      :link => "MyString"
    ).as_new_record)

    @campaign = assign(:campaign, stub_model(Campaign,
      :name => "MyString"
    ))

  end

  it "renders new image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => campaign_images_path(@campaign), :method => "post" do
      assert_select "input#image_file", :name => "image[file]"
      assert_select "input#image_max_show", :name => "image[max_show]"
      assert_select "input#image_remote_file_url", :name => "image[remote_file_url]"
      assert_select "input#image_link", :name => "image[link]"
    end
  end
end
