class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :state
      t.string :city
      t.integer :pincode
      t.string :area
      t.string :street1
      t.string :street2
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.references :store
      t.point :location, srid: 3785

      t.timestamps
    end
  end
end
