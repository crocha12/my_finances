class CreateOperations < ActiveRecord::Migration[7.0]
  def change
    create_table :operations do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true
      t.string :comment
      t.float :value

      t.timestamps
    end
  end
end
