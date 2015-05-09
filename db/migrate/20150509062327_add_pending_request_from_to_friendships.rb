class AddPendingRequestFromToFriendships < ActiveRecord::Migration
  def change
    add_column :friendships, :pending_request_from, :string
  end
end
