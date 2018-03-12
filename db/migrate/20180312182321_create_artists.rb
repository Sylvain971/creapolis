class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :pseudo
      t.string :firstname
      t.string :name
      t.string :country
      t.string :bio
      t.string :website

      t.timestamps
    end
  end
end
