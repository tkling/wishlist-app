class ChangeOwnerToOwnerId < ActiveRecord::Migration
  def change
    rename_column :wishlists, :owner, :owner_id
  end
end
