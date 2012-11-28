class Word < ActiveRecord::Base

  attr_accessible :name, :definition
  has_many :mnemonics

  validates_uniqueness_of :name

end