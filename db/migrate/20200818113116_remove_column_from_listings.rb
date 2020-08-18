class RemoveColumnFromListings < ActiveRecord::Migration[6.0]
  def change
    remove_column :listings, :country
  end
end
