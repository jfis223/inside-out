class CreateFeelings < ActiveRecord::Migration[6.0]
  def change
    create_table :feelings do |t|
      t.string :title
      t.text :description
      t.boolean :availibility
      t.string :category
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
