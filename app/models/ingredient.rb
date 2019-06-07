class Ingredient < ApplicationRecord
  has_many :doses, order: "name DESC"
  validates :name, presence: true, uniqueness: true
end
