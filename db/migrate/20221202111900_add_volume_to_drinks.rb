class AddVolumeToDrinks < ActiveRecord::Migration[7.0]
  def change
    add_column :drinks, :volume, :integer
  end
end
