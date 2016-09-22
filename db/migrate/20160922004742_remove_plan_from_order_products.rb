class RemovePlanFromOrderProducts < ActiveRecord::Migration
  def change
    remove_column :order_products, :plan, :string
  end
end
