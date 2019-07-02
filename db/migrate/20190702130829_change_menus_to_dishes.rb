class ChangeMenusToDishes < ActiveRecord::Migration[5.2]
  def change
    rename_table :menus, :dishes
  end
end
