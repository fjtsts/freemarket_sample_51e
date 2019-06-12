class ChangeDatatypeStatusOfExhibits < ActiveRecord::Migration[5.2]
  def change
    change_column :exhibits, :status, :integer
  end
end
