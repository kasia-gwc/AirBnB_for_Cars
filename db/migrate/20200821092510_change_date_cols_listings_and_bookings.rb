class ChangeDateColsListingsAndBookings < ActiveRecord::Migration[6.0]
  def change
    # remove_column :listings, :start_date
    # remove_column :listings, :end_date
    # remove_column :bookings, :start_date
    # remove_column :bookings, :end_date
    # add_column :listings, :start_date, :date
    # add_column :listings, :end_date, :date
    # add_column :bookings, :start_date, :date
    # add_column :bookings, :end_date, :date
    change_column :listings, :start_date, 'date USING CAST(start_date AS date)'
    change_column :listings, :end_date, 'date USING CAST(end_date AS date)'
    change_column :bookings, :start_date, 'date USING CAST(start_date AS date)'
    change_column :bookings, :end_date, 'date USING CAST(end_date AS date)'
  end
end
