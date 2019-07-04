class AddDishToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_reference :restaurants, :dish, foreign_key: true
  end
end
