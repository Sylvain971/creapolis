class AddModeratedToArtworks < ActiveRecord::Migration[5.1]
  def change
    add_column :artworks, :moderated, :boolean, default: false
  end
end
