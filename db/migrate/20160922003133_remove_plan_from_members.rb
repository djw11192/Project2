class RemovePlanFromMembers < ActiveRecord::Migration
  def change
    remove_column :members, :plan, :string
  end
end
