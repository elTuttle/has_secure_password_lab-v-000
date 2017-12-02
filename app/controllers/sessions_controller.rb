class SessionsController < ApplicationController

  def create
    if user = User.authenticate(params[:password])
  end

end
