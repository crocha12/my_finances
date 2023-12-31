class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
