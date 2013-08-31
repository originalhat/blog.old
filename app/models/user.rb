require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessor :password

  validates_confirmation_of :password
  validates_presence_of     :password, :on => :create
  validates_presence_of     :email
  validates_uniqueness_of   :email

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
