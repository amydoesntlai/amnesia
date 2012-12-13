class Vote < ActiveRecord::Base

  attr_accessible :mnemonic, :score
  belongs_to :user
  belongs_to :mnemonic
  validates_uniqueness_of :user_id, scope: [:mnemonic_id]
  validates :score, :inclusion => { :in => [1, -1] }
  validates_presence_of :user_id, :mnemonic

end