class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :type
      t.string :value
      t.references :contactable, polymorphic: true

      t.timestamps
    end
  end
end
