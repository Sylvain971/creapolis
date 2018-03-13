class RemovePostableFromPictures < ActiveRecord::Migration[5.1]
  def change
    remove_reference :pictures, :postable, polymorphic: true, index: true
  end
end
