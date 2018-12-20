class CreateFavoriteLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_lessons do |t|

      t.timestamps
    end
  end
end
