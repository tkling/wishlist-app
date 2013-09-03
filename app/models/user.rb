class User < ActiveRecord::Base
  attr_readonly :first_name, :last_name, :email_address, :birthday

  has_many :wishlists, dependent: :destroy
end
