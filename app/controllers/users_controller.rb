class UsersController < ApplicationController

  def create
    user = User.new(params)
    if user.valid?
      user.save
      redirect_to '/welcome'
    else
        
    end
  end
  
end
