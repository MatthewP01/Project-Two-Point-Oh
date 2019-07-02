class User < ApplicationRecord

  has_many :tanks
  has_many :fish, through: :tanks

  validates :username, :name, :email, presence: true
  validates :username, uniqueness: true
  has_secure_password


end
