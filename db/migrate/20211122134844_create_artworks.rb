class CreateArtworks < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks do |t|
      t.string :title
      t.date :date
      t.string :type
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
