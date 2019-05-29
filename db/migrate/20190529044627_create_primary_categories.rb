class CreatePrimaryCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :primary_categories do |t|
      t.string   :name,null: false,index: true
      t.integer  :id_item_category,null:false,foreign_key: true

      t.timestamps
    end
  end
end
