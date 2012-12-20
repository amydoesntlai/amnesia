class UsersController < ApplicationController

  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to :root
  end

  def show
  	@user = User.find(params[:id])
    @mnemonics = @user.mnemonics
  end

end