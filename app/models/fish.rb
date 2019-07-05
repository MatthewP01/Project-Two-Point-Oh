class Fish < ApplicationRecord
  has_many :fish_tanks
  has_many :tanks, through: :fish_tanks
end
