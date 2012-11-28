class MnemonicsController < ApplicationController

  respond_to :html
  
  def index
  	@mnemonics = Mnemonic.all
  end

  def new
  	@mnemonic = Mnemonic.new
  end

  def create
  	@mnemonic = Mnemonic.create(params[:mnemonic])
  	respond_with(@mnemonic)
  end

end