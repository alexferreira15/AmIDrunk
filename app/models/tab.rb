class Tab < ApplicationRecord
  belongs_to :user
  has_many :tab_drinks
end
