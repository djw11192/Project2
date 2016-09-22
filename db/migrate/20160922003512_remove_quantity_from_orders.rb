class RemoveQuantityFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :quantity, :string
  end
end
