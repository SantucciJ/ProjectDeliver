class Order < ApplicationRecord
  #has_many :dishes
  belongs_to :user
end
