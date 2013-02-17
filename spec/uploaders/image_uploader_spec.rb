require 'carrierwave/test/matchers'

describe ImageUploader do
  include CarrierWave::Test::Matchers

  before do
    ImageUploader.enable_processing = true
    @uploader = ImageUploader.new(@user, :afile)
    @uploader.store!(File.open(File.expand_path("../../support/60.jpeg", __FILE__)))
  end

  after do
    ImageUploader.enable_processing = false
    @uploader.remove!
  end

  context 'the small version' do
    it "should scale down a landscape image to fit within 200 by 200 pixels" do
      @uploader.small.should have_dimensions(234,30)
    end
  end

  it "should make the image readable only to the owner and not executable" do
    @uploader.should have_permissions(0644)
  end
end