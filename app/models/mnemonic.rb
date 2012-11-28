class Mnemonic < ActiveRecord::Base
  attr_accessible :text, :word
  belongs_to :word

  validates_uniqueness_of :text

end