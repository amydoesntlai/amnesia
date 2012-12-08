class WordsController < ApplicationController
  respond_to :html

  def index
  	@words = Word.order('name')
  end

  def create
  	@word = Word.new(params[:word])
    @word.user = current_user
    @word.save
    respond_with(@word)
  end

  def show
  	@word = Word.find(params[:id])
  end

end