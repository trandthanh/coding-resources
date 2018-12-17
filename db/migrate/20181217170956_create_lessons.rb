class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :url
      t.string :title
      t.text :description
      t.string :level
      t.references :author, foreign_key: true
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
