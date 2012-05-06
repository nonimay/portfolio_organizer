class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name

  validates :first_name, :last_name, :email, :presence => true
end
