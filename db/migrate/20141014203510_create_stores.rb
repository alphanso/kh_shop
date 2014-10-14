class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.references :chain_of_store

      t.timestamps
    end
  end
end
