class Decoration < ApplicationRecord
  has_many :decoration_tanks
  has_many :tanks, through: :decoration_tanks
end
