class CreateTabs < ActiveRecord::Migration[7.0]
  def change
    create_table :tabs do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.references :user, null: false, foreign_key: true
      t.references :drink, null: false, foreign_key: true

      t.timestamps
    end
  end
end
