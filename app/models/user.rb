class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :rememberable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  validates_confirmation_of :password
  validates_length_of :password, :minimum => 4
end
