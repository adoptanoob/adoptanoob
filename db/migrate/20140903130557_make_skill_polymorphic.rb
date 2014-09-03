class MakeSkillPolymorphic < ActiveRecord::Migration
  def change
    add_column :skills, :skilled_id, :integer
    add_column :skills, :skilled_type, :string
  end
end
