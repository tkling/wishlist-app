class User < ActiveRecord::Base
  has_many :wishlists, dependent: :destroy

  validates :first_name, :length => { :minimum => 2, :maximum => 20 }, :presence => true
  validates :last_name, :length => { :minimum => 2, :maximum => 25 }, :presence => true
  validates :email_address, :length => { :minimum => 6, :maximum => 100 }, :presence => true,
            :format => { :with => /\A[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\z/, :message => 'must be a valid email address!' }
  validates :birthday, :presence => true
end
