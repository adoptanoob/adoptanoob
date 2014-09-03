class RemoveMentorFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :mentor, :boolean
  end
end
