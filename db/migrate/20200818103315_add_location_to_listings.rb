class AddLocationToListings < ActiveRecord::Migration[6.0]
  def change
    remove_column :listings, :location
    add_column :listings, :street, :string
    add_column :listings, :zip, :string
    add_column :listings, :city, :string
    add_column :listings, :country, :string
    add_column :listings, :price, :integer
  end
end
