class ChangeColumnValueToAmountInOperation < ActiveRecord::Migration[7.0]
  def change
    rename_column :operations, :value, :amount
  end
end
