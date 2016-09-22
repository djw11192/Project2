class AddFrequencyToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :frequency, :string
  end
end
