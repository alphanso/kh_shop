class AddIndexToLocation < ActiveRecord::Migration
  def change
    add_index :addresses, :location, :spatial => true
  end
end
