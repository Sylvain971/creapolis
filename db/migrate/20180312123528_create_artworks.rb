class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :title
      t.text :description
      t.decimal :lat
      t.decimal :long

      t.timestamps
    end
  end
end
