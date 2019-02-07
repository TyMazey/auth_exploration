class User < ApplicationRecord

  def self.authenticate(email, password)
    if User.find_by(email: email) && User.find_by(email: email).password == password
      User.find_by(email: email)
    else
      nil
    end
  end
end
