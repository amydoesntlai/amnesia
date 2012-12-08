class MnemonicsController < ApplicationController

  respond_to :html

  def index
  	@word = Word.find(params[:word_id])
  	@mnemonics = Mnemonic.where(:word_id => @word.id)
  end

  def create
  	@word = Word.find(params[:word_id])
  	@mnemonic = Mnemonic.new(params[:mnemonic])
    @mnemonic.word_id = @word.id
    @mnemonic.user = current_user
  	if @mnemonic.save
  	  redirect_to word_path(@word)
  	else
  	  redirect_to :back
  	end
  end

end