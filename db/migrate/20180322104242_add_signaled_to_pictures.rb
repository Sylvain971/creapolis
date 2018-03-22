class AddSignaledToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :signaled, :boolean, default: true
  end
end
