class WordsController < ApplicationController
  respond_to :html

  def index
  	@words = Word.order('name')
  end

  def new
  	@word = Word.new
  end

  def create
  	@word = Word.create(params[:word])
    respond_with(@word)
  end

  def show
  	@word = Word.find(params[:id])
  end

end