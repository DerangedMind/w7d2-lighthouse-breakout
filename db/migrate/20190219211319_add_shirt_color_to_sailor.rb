class AddShirtColorToSailor < ActiveRecord::Migration[5.1]
  def change
    add_column :sailors, :shirt_color, :string
  end
end
