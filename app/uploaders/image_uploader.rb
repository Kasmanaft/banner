# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  storage :file
  
  version :small do
    process :resize_to_fit => [234,30]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
