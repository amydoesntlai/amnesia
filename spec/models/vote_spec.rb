require 'spec_helper'

describe Vote do
  it { should belong_to :user }
  it { should belong_to :mnemonic }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :mnemonic }
  it { should validate_presence_of :score }
  it { should ensure_inclusion_of(:score).in_array([1, -1]) }
  it "should validate uniqueness of user-mnemonic combination"
end