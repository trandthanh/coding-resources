class AddUserIdToFavoriteLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :favorite_lessons, :user_id, :integer
  end
end
