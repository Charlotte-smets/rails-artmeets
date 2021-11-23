class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :gallerist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
