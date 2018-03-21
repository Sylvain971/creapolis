class AddStyleToArtworks < ActiveRecord::Migration[5.1]
  def change
    add_column :artworks, :style, :string
  end
end
