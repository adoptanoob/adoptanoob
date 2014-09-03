class AddSkillToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :skill, :string
  end
end
