class AddPrefectureIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :prefecture ,foreogn_key: true
  end
end
