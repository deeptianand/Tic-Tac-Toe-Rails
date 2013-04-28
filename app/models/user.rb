require 'bcrypt'
class User < ActiveRecord::Base
	include BCrypt
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password
end
