class CreateChainOfStores < ActiveRecord::Migration
  def change
    create_table :chain_of_stores do |t|
      t.string :name
      t.string :slug
      t.integer :type
      t.references :user

      t.timestamps
    end
  end
end
