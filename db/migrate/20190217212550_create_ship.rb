class CreateShip < ActiveRecord::Migration[5.1]
  def change
    create_table :ships do |t|
      t.string :name
      t.references :fleet
      t.timestamps
    end
  end
end
