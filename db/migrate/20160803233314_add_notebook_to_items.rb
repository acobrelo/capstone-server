class AddNotebookToItems < ActiveRecord::Migration
  def change
    add_reference :items, :notebook, index: true, foreign_key: true
  end
end
