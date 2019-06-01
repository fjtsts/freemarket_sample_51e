class RenameBirthYearColumnToUserProfiles < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_profiles, :birth_year, :birth
  end
end
