class User < ApplicationRecord

  has_many :tanks
  has_many :fish, through: :tanks

  validates :username, presence: true
  validates :email, presence: true
  validates :name, presence: true
  has_secure_password


end
