class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation
  has_secure_password

  validates :first_name, :last_name, :email, :presence => true
  validates :password, length: { minimum: 6 }


end
