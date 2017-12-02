class SessionsController < ApplicationController

  def create
    if params[:password] != ""
      if user = User.authenticate(params[:password])
        sessions[:name] = user.name
      end
    end
  end

end
