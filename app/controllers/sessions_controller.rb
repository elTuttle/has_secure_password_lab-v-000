class SessionsController < ApplicationController

  def create
    binding.pry
    if params[:user][:password] != ""
      if user = User.authenticate(params[:password])
        sessions[:name] = user.name
      end
    end
  end

end
