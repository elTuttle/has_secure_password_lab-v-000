class SessionsController < ApplicationController

  def create
    if params[:password] != ""
      if user = User.authenticate(params[:password])
      end
  end

end
