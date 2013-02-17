include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :image do
    file { fixture_file_upload(File.expand_path("../../support/60.jpeg", __FILE__), "image/jpeg") }
    max_show 3
    link "http://test.me/"
    campaign
  end
end

