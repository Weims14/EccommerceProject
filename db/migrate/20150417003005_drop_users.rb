class DropUsers < ActiveRecord::Migration
  def change
    drop_table :provinces
    drop_table :customers
  end
end
