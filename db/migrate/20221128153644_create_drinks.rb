class CreateDrinks < ActiveRecord::Migration[7.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.float :alcohol
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
