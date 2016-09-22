class AddFrequencyToOrderProducts < ActiveRecord::Migration
  def change
    add_column :order_products, :frequency, :string
  end
end
