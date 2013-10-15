require 'uri'

class ListItem < ActiveRecord::Base
  belongs_to :wishlist

  validates :name, :length => { :minimum => 3, :maximum => 25 }, :presence => true
  validates :url, :format => { :with => URI.regexp }, :presence => true
  validates :notes, :length => { :minimum => 3, :maximum => 300 }
  validates :wishlist_id, :presence => true
end
