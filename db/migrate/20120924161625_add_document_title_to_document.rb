class AddDocumentTitleToDocument < ActiveRecord::Migration
  def change
    add_column :documents, :title, :string
  end
end
