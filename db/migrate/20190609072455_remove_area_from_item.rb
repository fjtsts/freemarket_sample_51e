class RemoveAreaFromItem < ActiveRecord::Migration[5.2]
  def down
    remove_column :items, :area
  end
end
