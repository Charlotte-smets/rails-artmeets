class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.date :date
      t.references :artwork, null: false, foreign_key: true
      t.references :gallerist, null: false, foreign_key: true
      t.boolean :reciprocal_like, default: false

      t.timestamps
    end
  end
end
