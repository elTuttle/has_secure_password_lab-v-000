class User < ActiveRecord::Base

  validate :password_and_confirmation_match

  def password_and_confirmation_match
    if !self.password == self.password_confirmation
  end


end
