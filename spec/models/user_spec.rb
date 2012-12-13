require 'spec_helper'

describe User do
  it { should have_many :words }
  it { should have_many :mnemonics }
  it { should have_many :votes }
  it { should validate_uniqueness_of :username }
end