class AddPriceToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :price, :integer
  end
end