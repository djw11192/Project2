class AddStatusToOrderProducts < ActiveRecord::Migration
  def change
    add_column :order_products, :status, :string
  end
end
