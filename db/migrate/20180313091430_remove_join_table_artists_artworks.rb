class RemoveJoinTableArtistsArtworks < ActiveRecord::Migration[5.1]
  def up
    drop_join_table :artists, :artworks do |t|
      # t.index [:artist_id, :artwork_id]
      # t.index [:artwork_id, :artist_id]
    end
  end
end
