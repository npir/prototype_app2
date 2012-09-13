class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :user_id
      t.string :description

      t.timestamps
    end
    add_index :projects, [:user_id, :created_at]
  end
end
