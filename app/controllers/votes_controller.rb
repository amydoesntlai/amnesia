class VotesController < ApplicationController

  def create
  	mnemonic = Mnemonic.find(params[:mnemonic_id])
  	vote = Vote.new(params[:vote])
  	vote.mnemonic = mnemonic
  	vote.user = current_user
  	vote.save
    redirect_to word_path(mnemonic.word)
  end

end