class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string      :last_name, null: false
      t.string      :first_name, null: false
      t.string      :last_name_kata, null: false
      t.string      :first_name_kata, null: false
      t.string      :postal_code, null: false
      t.string      :prefecture, null: false
      t.string      :city, null: false
      t.string      :town_number, null: false
      t.string      :building, null: true
      t.string      :tel, null: true
      t.references  :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
