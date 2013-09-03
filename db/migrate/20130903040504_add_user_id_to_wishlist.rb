class AddUserIdToWishlist < ActiveRecord::Migration
  def change
    add_column :wishlists, :user_id, :string
  end
end
