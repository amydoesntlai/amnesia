require 'spec_helper'

describe Mnemonic do
  it { should belong_to :word }
  it { should belong_to :user }
  it { should have_many :votes }
  it { should validate_uniqueness_of :text }
  it "should return give the correct score"
end