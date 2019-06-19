class ChangeDatatypeHowToShippingOfItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :how_to_shipping, :string, null: false
  end
end
