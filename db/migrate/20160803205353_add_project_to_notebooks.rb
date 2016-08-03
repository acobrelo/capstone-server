class AddProjectToNotebooks < ActiveRecord::Migration
  def change
    add_reference :notebooks, :project, index: true, foreign_key: true
  end
end
