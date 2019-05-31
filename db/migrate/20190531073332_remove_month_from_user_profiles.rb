class RemoveMonthFromUserProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_profiles, :birth_month, :date
    remove_column :user_profiles, :birth_day, :date
  end
end
