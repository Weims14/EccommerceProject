class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :stauts
      t.decimal :pst
      t.decimal :gst
      t.decimal :hst

      t.timestamps
    end
  end
end
