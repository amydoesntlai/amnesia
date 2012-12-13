class Mnemonic < ActiveRecord::Base
  attr_accessible :text
  belongs_to :word
  belongs_to :user
  has_many :votes

  validates_uniqueness_of :text

  def score
  	votes.inject(0) { |sum, vote| sum + vote.score }
  end

end