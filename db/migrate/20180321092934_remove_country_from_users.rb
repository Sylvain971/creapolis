class RemoveCountryFromUsers < ActiveRecord::Migration[5.1]
  def change
  	  remove_column :users, :country
  end
end
