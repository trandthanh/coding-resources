class AddLessonIdToFavoriteLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :favorite_lessons, :lesson_id, :integer
  end
end
