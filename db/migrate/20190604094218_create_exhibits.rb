class CreateExhibits < ActiveRecord::Migration[5.2]
  def change
    create_table :exhibits do |t|
      t.string     :status,  null: false, default: 1   #出品中
      t.references :user,    null: false, foregin_key: true
      t.references :item,    null: false, foregin_key: true
      t.timestamps
    end
  end
end
