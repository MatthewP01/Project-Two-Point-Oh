class Fish < ApplicationRecord

  # belongs_to :tank, optional: true
  has_many :fish_tanks
  has_many :tanks, through: :fish_tanks


end
