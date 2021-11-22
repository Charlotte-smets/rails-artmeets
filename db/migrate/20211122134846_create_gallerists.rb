class CreateGallerists < ActiveRecord::Migration[6.1]
  def change
    create_table :gallerists do |t|
      t.string :first_name
      t.string :last_name
      t.float :rating
      t.string :address
      t.string :description
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
