class FishTank < ApplicationRecord
  belongs_to :fish
  belongs_to :tank
end
