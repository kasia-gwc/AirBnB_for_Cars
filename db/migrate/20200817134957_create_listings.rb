class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :vehicle_type
      t.string :name
      t.string :location
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
