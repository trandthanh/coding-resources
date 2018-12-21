class AddCompletedToFavoriteTutorials < ActiveRecord::Migration[5.2]
  def change
    add_column :favorite_tutorials, :completed, :boolean, null: false, default: false
  end
end
