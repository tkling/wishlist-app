class Wishlist < ActiveRecord::Base
  has_many :list_items, dependent: :destroy
  belongs_to :user

  validates :user, presence: true
  validates :description, :length => { :minimum => 3, :maximum => 160 }, :presence => true
  validates :title, :length => { :minimum => 3, :maximum => 50 }, :presence => true
end
