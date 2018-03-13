class CreateJoinTableArtworksUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :artworks, :users do |t|
      # t.index [:artwork_id, :user_id]
      # t.index [:user_id, :artwork_id]
    end
  end
end
