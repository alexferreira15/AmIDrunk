class CreateFavouriteDrinks < ActiveRecord::Migration[7.0]
  def change
    create_table :favourite_drinks do |t|
      t.references :drink, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
