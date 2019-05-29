class CreateItemCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :item_categories do |t|
      t.references :item ,null:false,foreign_key: true
      # t.references :primary_categories,null:false,foreign_key: true
      # t.references :secondary_categories,null:false,foreign_key: true
      # t.references :extracategories,null:false,foreign_key: true

      t.timestamps
    end
  end
end
