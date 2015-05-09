class AddPendingToToFriendships < ActiveRecord::Migration
  def change
    add_column :friendships, :pending_to, :string
  end
end
