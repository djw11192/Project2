class RemovePlanFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :plan, :string
  end
end
