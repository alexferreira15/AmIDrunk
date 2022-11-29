class RemoveDrinkIdFromTabs < ActiveRecord::Migration[7.0]
  def change
    remove_reference :tabs, :drink, null: false, foreign_key: true
  end
end
