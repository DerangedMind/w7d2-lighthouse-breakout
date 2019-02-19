class CreateRank < ActiveRecord::Migration[5.1]
  def change
    create_table :ranks do |t|
      t.string :skill
      t.integer :level
      t.references :sailor
    end
  end
end
