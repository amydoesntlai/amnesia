class Word < ActiveRecord::Base

  attr_accessible :name, :definition
  has_many :mnemonics, :dependent => :destroy
  belongs_to :user

  validates_presence_of :name, :definition
  validates_uniqueness_of :name, :case_sensitive => false

end