class AddDatetoOperation < ActiveRecord::Migration[7.0]
  def change
    add_column :operations, :date, :date
  end
end
