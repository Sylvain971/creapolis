class AddArtistToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :artist, :boolean, default: false
  end
end
