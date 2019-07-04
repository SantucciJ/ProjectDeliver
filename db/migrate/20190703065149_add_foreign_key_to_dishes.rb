class AddForeignKeyToDishes < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :restaurants, :dishes
    add_foreign_key :dishes, :restaurants
  end
end
