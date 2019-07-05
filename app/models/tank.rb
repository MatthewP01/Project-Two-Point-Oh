class Tank < ApplicationRecord
  belongs_to :user
  has_many :fish_tanks
  has_many :fish, through: :fish_tanks

  has_many :decoration_tanks
  has_many :decorations, through: :decoration_tanks

  validates :name, presence: true
  validates :name, length: {maximum: 15}

  def name_and_money
    "#{self.name} - $#{self.money}"
  end
end
