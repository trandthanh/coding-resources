class CreateTutorials < ActiveRecord::Migration[5.2]
  def change
    create_table :tutorials do |t|
      t.string :url
      t.string :title
      t.text :description
      t.references :author, foreign_key: true
      t.references :language, foreign_key: true
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
