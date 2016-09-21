class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :member, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
