class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :genre
      t.text :description
      t.boolean :completed, default: false
      t.date :started_on
      t.date :target_finish
      t.boolean :inProgress, default: true

      t.timestamps null: false
    end
  end
end
