class AddSkillToDuty < ActiveRecord::Migration[5.1]
  def change
    add_column :duties, :skill, :string
  end
end
