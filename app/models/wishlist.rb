class Wishlist < ActiveRecord::Base
  has_many :list_items
  belongs_to :user
end
