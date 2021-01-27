class User < ActiveRecord::Base
  has_many :comments
  has_many :destinations
  has_secure_password
  validates :email, :uniqueness => true, :presence => true #makes sure email address only entered once in DB and that its present

end
