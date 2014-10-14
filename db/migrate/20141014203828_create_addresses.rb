class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :state
      t.string :city
      t.string :pincode
      t.string :latitude
      t.string :longitude
      t.string :area
      t.string :streetName
      t.string :building
      t.references :store

      t.timestamps
    end
  end
end
