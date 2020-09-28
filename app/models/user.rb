class User < ApplicationRecord
  has_many :destinations
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
