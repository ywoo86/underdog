require 'bcrypt'
class User < ApplicationRecord
  include BCrypt
  validates :email, uniqueness: true
  belongs_to :team

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end


end
