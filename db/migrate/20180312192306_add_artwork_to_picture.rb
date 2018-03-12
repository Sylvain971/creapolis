class AddArtworkToPicture < ActiveRecord::Migration[5.1]
  def change
    add_reference :pictures, :artwork, foreign_key: true
  end
end
