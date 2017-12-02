class UsersController < ApplicationController

  def new
  end

  def create
    binding.pry
    user = User.new()
    user.name = params[:user][:name]
    if user.valid?
      user.save
      redirect_to '/welcome'
    else
      redirect_to '/login'
    end
  end

  def welcome
  end

end
