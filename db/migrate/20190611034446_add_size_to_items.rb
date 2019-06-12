class AddSizeToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :size_id, :bigint, null: false
  end
end
