class AddCompletedToFavoriteLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :favorite_lessons, :completed, :boolean, null: false, default: false
  end
end
