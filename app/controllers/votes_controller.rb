class VotesController < ApplicationController

  def create
    word = Word.find(params[:word_id])
  	mnemonic = Mnemonic.find(params[:mnemonic_id])
  	vote = Vote.new(params[:vote])
  	vote.mnemonic = mnemonic
  	vote.user = current_user
  	vote.save
    redirect_to word_path(word)
  end

end