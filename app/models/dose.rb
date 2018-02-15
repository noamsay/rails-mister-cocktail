class Dose < ApplicationRecord
  validates :ingredient, uniqueness: { scope: :cocktail }
  belongs_to :ingredient
  belongs_to :cocktail
end
