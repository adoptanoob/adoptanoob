class AddProjectReferenceToRoles < ActiveRecord::Migration
  def change
    add_reference :roles, :project, index: true
  end
end
