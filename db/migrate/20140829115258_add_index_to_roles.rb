class AddIndexToRoles < ActiveRecord::Migration
  def change
    add_index :roles, [ "project_id", "user_id" ]
  end
end
