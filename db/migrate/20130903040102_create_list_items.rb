class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.string :name
      t.string :url
      t.string :notes
      t.string :wishlist_id

      t.timestamps
    end
  end
end
