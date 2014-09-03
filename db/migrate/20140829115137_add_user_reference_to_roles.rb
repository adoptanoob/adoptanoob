class AddUserReferenceToRoles < ActiveRecord::Migration
  def change
    add_reference :roles, :user, index: true
  end
end
