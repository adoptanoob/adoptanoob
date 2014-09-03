class RenameSkillToSkillsInSkills < ActiveRecord::Migration
  def change
    rename_column :skills, :skill, :skill_content
  end
end
