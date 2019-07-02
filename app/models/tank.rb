class Tank < ApplicationRecord

  belongs_to :user
  has_many :fish

  validates :name, presence: true

end
