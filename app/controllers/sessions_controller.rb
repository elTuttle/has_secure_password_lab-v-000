class SessionsController < ApplicationController

  def create
    #binding.pry
    if params[:user][:password] != ""
      if user = User.find_by(name: params[:user][:name])
        if user.authenticate(params[:user][:password])
          session[:name] = user.name
          redirect_to '/welcome'
        end
      end
    end
    redirect_to '/login'
  end

end
