class AddPlanToOrderProducts < ActiveRecord::Migration
  def change
    add_column :order_products, :plan, :string
  end
end
