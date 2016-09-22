class RemoveStatusFromOrderProducts < ActiveRecord::Migration
  def change
    remove_column :order_products, :status, :string
  end
end
