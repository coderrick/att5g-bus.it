class AddFiveGToNetworks < ActiveRecord::Migration[6.0]
  def change
    add_column :networks, :five_g, :boolean
  end
end
