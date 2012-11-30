class Mnemonic < ActiveRecord::Base
  attr_accessible :text
  belongs_to :word
  belongs_to :user

  validates_uniqueness_of :text

end