class UsersController < ApplicationController
  def show
	  @user = User.find_by_remember_token(cookies[:remember_token])
  end
  def new
	  @user = User.new
  end
  def create
	  @user = User.new(params[:user])
	  if @user.save
		  flash[:success] = "Welcome to myreef.tv"
		  redirect_to @user
	  else
		  render 'new'
	  end
  end
end
