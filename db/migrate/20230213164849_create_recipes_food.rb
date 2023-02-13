class CreateRecipesFood < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes_foods do |t|
      t.string :quantity
      t.references foreign_key: { to_table: 'foods' }
      t.references foreign_key: { to_table: 'recipes' }

      t.timestamps
    end
  end
end
