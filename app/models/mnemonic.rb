class Mnemonic < ActiveRecord::Base
  attr_accessible :text
  belongs_to :word

  validates_uniqueness_of :text

end