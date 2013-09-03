class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.string :title
      t.string :description
      t.string :owner

      t.timestamps
    end
  end
end
