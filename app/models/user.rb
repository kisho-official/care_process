class User < ActiveRecord::Base
  attr_accessible :email, :password_hash, :password_salt, :password, :password_confirmation, :emp_id, :emp_name, :card_no
  attr_accessor :password, :password_confirmation
  
  before_save :encrypt_password
  validates_confirmation_of :password
  validates :password, :presence=> "true", :on=>"create"
  validates :email, :presence=> "true"
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
