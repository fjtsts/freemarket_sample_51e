class CreateSecondaryCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :secondary_categories do |t|
      t.string  :name,null:false,index:true
      t.references  :item_category,null:false,foreign_key:true
      t.references  :primary_categories,null:false,foreign_key:true
      t.timestamps
    end
  end
end
