class SessionsController < ApplicationController

  def create
    #binding.pry
    if params[:user][:password] != ""
      if user = User.find_by(name: params[:user][:name])
        if user.authenticate(params[:user][:password])
          session[:name] = user.name
        end
      end
    end
  end

end
