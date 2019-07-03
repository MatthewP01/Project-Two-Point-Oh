class Tank < ApplicationRecord

  belongs_to :user
  has_many :fish

  validates :name, presence: true

  def name_and_money
    "#{self.name} - $#{self.money}"
  end

end
