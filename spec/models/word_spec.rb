require 'spec_helper'

describe Word do

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should belong_to :user }
  it { should have_many :mnemonics }

end