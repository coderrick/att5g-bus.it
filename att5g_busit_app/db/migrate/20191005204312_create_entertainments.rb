class CreateEntertainments < ActiveRecord::Migration[6.0]
  def change
    create_table :entertainments do |t|

      t.timestamps
    end
  end
end
