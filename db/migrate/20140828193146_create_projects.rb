class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.boolean :mentor

      t.timestamps
    end
  end
end
