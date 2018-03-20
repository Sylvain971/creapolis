class CreateJoinTableArtworksRoutes < ActiveRecord::Migration[5.1]
  def change
    create_join_table :artworks, :routes do |t|
      # t.index [:artwork_id, :route_id]
      # t.index [:route_id, :artwork_id]
    end
  end
end
