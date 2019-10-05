class CreateFourds < ActiveRecord::Migration[6.0]
  def change
    create_table :fourds do |t|

      t.timestamps
    end
  end
end
