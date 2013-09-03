class Wishlist < ActiveRecord::Base
  has_many :list_items, dependent: :destroy
  belongs_to :user
end
