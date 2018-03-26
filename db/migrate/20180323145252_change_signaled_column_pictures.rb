class ChangeSignaledColumnPictures < ActiveRecord::Migration[5.1]
  def change
    change_column :pictures, :signaled, :boolean, default: false
  end
end
