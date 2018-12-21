class CreateFavoriteTutorials < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_tutorials do |t|
      t.references :user, foreign_key: true
      t.references :tutorial, foreign_key: true

      t.timestamps
    end
  end
end
