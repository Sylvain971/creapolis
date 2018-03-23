class AddAddressToArtwork < ActiveRecord::Migration[5.1]
  def change
    add_column :artworks, :address, :string
  end
end
