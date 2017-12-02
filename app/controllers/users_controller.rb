class UsersController < ApplicationController

  def new
  end

  def create
    binding.pry
    user = User.new(params[:user])
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
