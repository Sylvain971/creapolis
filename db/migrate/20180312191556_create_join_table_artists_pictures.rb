class CreateJoinTableArtistsPictures < ActiveRecord::Migration[5.1]
  def change
    create_join_table :artists, :pictures do |t|
      # t.index [:artist_id, :picture_id]
      # t.index [:picture_id, :artist_id]
    end
  end
end
