class Image < ActiveRecord::Base
  mount_uploader :file, ImageUploader
  belongs_to :campaign
  attr_accessible :campaign_id, :click, :file, :link, :max_show, :show, :remote_file_url

  validates :link, :format => URI::regexp(%w(http https))
  validates_integrity_of :file
  validates_processing_of :file
  validates_numericality_of  :max_show
end
