class CreateNotebooks < ActiveRecord::Migration
  def change
    create_table :notebooks do |t|
      t.string :name, default: 'Notebook'

      t.timestamps null: false
    end
  end
end
