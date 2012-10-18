class AuthUser < ActiveRecord::Base
  attr_accessible :email, :password_digest

  #validates_presence_of :password, :on => :create
  #has_secure_passsword

end
