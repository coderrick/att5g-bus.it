class AddLatLongToNetworks < ActiveRecord::Migration[6.0]
  def change
    add_column :networks, :lat, :string
    add_column :networks, :long, :string
  end
end
