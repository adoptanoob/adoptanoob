class AddMotivationToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :motivation, :text
  end
end
