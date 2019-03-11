class AddPriceToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :price, :integer
  end
end
