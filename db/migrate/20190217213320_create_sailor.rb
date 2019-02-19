class CreateSailor < ActiveRecord::Migration[5.1]
  def change
    create_table :sailors do |t|
      t.string :name
    end
  end
end
