class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false, index: true
      t.text :description, null: false
      t.integer :status, null: false
      t.integer :shipping_fee, null: false
      t.integer :how_to_shipping, null: false
      t.integer :area, null: false
      t.integer :day, null: false
      t.integer :price, null: false
      t.timestamps
    end
  end
end
