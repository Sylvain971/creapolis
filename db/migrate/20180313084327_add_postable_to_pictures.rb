class AddPostableToPictures < ActiveRecord::Migration[5.1]
  def change
    add_reference :pictures, :postable, polymorphic: true, index: true
  end
end
