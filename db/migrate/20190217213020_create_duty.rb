class CreateDuty < ActiveRecord::Migration[5.1]
  def change
    create_table :duties do |t|
      t.references  :ship
      t.integer     :required_rank
      t.date        :start_date
      t.date        :end_date
      t.text        :task
      t.timestamps
    end
  end
end
