class UsersController < ApplicationController

  def create
    user = User.new(params)
  end
  
end
