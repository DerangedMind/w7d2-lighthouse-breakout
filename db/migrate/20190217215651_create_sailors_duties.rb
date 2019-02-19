class CreateSailorsDuties < ActiveRecord::Migration[5.1]
  def change
    create_join_table :sailors, :duties
  end
end
