class User < ActiveRecord::Base

  has_secure_password
  attr_accessible :username, :password, :password_confirmation
  validates :username, uniqueness: true

  has_many :words
  has_many :mnemonics
  has_many :votes

end