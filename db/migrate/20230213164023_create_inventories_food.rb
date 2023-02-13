class CreateInventoriesFood < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories_foods do |t|
      t.string :quantity
      t.references foreign_key: { to_table: 'inventories' }
      t.references foreign_key: { to_table: 'foods' }

      t.timestamps
    end
  end
end
