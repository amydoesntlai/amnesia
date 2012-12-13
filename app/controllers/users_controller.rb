class UsersController < ApplicationController

  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to :back
  end

  def show
  	@user = User.find(params[:id])
  end

end