class CreateTabDrinks < ActiveRecord::Migration[7.0]
  def change
    create_table :tab_drinks do |t|
      t.references :tab, null: false, foreign_key: true
      t.references :drink, null: false, foreign_key: true

      t.timestamps
    end
  end
end
