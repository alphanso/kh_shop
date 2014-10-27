class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :type
      t.string :slug
      t.references :user

      t.timestamps
    end
  end
end
