class RemoveFrequencyFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :status, :string
  end
end
