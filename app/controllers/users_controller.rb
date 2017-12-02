class UsersController < ApplicationController

  def new
  end

  def create
    #binding.pry
    user = User.new()
    user.name = params[:user][:name]
    user.password = params[:user][:password]
    user.password_confirmation = params[:user][:password_confirmation]
    if user.valid?
      user.save
      redirect_to '/sessions/create'
    else
      redirect_to '/login'
    end
  end

  def welcome
  end

end
