class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :cc
      t.text :address
      t.string :plan
      t.string :frequency
      t.string :status

      t.timestamps null: false
    end
  end
end
