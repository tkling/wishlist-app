json.array!(@wishlists) do |wishlist|
  json.extract! wishlist, :title, :description, :user_id
  json.url wishlist_url(wishlist, format: :json)
end
