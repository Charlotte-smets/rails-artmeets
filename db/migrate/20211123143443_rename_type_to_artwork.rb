class RenameTypeToArtwork < ActiveRecord::Migration[6.1]
  def change
    rename_column :artworks, :type, :style
  end
end
