class AddClomunToFavoriteItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :favorite_items_count, :integer
  end
end

