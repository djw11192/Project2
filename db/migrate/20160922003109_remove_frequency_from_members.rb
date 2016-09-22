class RemoveFrequencyFromMembers < ActiveRecord::Migration
  def change
    remove_column :members, :frequency, :string
  end
end
