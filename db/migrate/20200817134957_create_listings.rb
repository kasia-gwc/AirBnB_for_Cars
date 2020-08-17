class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :vehicle_type
      t.string :name
      t.string :availability
      t.string :location

      t.timestamps
    end
  end
end
