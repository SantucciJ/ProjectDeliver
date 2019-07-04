class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :orders, dependent: :destroy
  #has_one :restaurant
end
