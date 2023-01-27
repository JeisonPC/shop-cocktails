class CreateCocktails < ActiveRecord::Migration[7.0]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :category
      t.string :ingredients
      t.string :recipe
      t.decimal :price

      t.timestamps
    end
  end
end
