class AddPseudoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :pseudo, :string
  end
end
