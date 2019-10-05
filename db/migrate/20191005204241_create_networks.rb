class CreateNetworks < ActiveRecord::Migration[6.0]
  def change
    create_table :networks do |t|
      t.integer :bus_id
      t.boolean :5g
      t.integer :station_id
      t.string :bandwidth

      t.timestamps
    end
  end
end
