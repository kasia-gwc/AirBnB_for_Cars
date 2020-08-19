class AddCountryToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :country, :string
  end
end
