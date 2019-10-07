class Recipe < ApplicationRecord
    has_many :likes
    has_many :users, through: :likes
    has_many :ingredients
    has_many :foods, through: :ingredients
end