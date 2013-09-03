json.array!(@wishlists) do |wishlist|
  json.extract! wishlist, :title, :description, :owner
  json.url wishlist_url(wishlist, format: :json)
end
