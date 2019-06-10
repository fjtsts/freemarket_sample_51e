class RemoveAreaFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items,:area
  end
end
