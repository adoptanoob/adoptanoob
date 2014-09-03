class RemoveMentorFromRoles < ActiveRecord::Migration
  def change
    remove_column :roles, :mentor, :boolean
  end
end
