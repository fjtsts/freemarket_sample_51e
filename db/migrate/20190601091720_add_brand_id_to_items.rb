class AddBrandIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :brand, null: true
  end
end
