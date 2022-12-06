class AddFinalPercentageToTabs < ActiveRecord::Migration[7.0]
  def change
    add_column :tabs, :final_percentage, :float
  end
end
