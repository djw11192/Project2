class RemoveFrequencyFromOrderProducts < ActiveRecord::Migration
  def change
    remove_column :order_products, :frequency, :string
  end
end
