class RenameLatAndLong < ActiveRecord::Migration[6.0]
  def change
    rename_column :networks, :lat, :start
    rename_column :networks, :long, :end
  end
end
