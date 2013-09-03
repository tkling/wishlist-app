class ChangeOwnerIdToUserId < ActiveRecord::Migration
  def change
    rename_column :wishlists, :owner_id, :user_id
  end
end
