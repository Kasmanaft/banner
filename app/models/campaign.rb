class Campaign < ActiveRecord::Base
  has_many :images
  attr_accessible :name

  validates_length_of :name, :in => 4..32, :allow_blank => false
  validates_uniqueness_of :name
end
