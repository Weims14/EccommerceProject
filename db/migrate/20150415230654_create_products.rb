class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :stock_quantity
      t.decimal :price
      t.string :image

      t.timestamps
    end
  end
end
