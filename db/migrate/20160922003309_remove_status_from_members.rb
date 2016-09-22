class RemoveStatusFromMembers < ActiveRecord::Migration
  def change
    remove_column :members, :status, :string
  end
end
