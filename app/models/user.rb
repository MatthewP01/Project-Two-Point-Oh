class User < ApplicationRecord
  has_many :tanks

  validates :username, :name, :email, presence: true
  validates :username, uniqueness: true
  has_secure_password
end
