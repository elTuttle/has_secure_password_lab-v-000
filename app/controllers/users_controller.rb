class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(params[:user])
    binding.pry
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
