class AddPendingRequestToFriendships < ActiveRecord::Migration
  def change
    add_column :friendships, :pending_request_to, :string
  end
end
