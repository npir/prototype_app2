class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :uuid
      t.string :project_id

      t.timestamps
    end
  end
end
