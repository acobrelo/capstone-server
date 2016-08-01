class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :location
      t.string :aliases, array: true, default: []
      t.text :biography

      t.timestamps null: false
    end
  end
end
