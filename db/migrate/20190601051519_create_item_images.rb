class CreateItemImages < ActiveRecord::Migration[5.2]
  def change
    create_table :item_images do |t|
      t.string     :image,   null: false
      t.references :item_id, null: false, foregin_key: true
      t.timestamps
    end
  end
end
