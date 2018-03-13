class DropArtists < ActiveRecord::Migration[5.1]
  def up
  	drop_table :artists
  end
end
