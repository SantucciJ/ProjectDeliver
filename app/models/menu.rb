class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :orders, dependent: :destroy
end
