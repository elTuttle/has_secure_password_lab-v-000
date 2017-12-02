class User < ActiveRecord::Base

  validate :password_and_confirmation_match

  def password_and_confirmation_match
    if !self.password == self.password_confirmation
      errors.add(:password_match, "Password and confirmation don't match")
    end
  end


end
