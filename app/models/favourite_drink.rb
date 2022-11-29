class FavouriteDrink < ApplicationRecord
  has_many :drinks
  belongs_to :user
end
