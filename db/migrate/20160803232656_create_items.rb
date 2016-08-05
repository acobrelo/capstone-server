class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :content
      t.boolean :done, default: false

      t.timestamps null: false
    end
  end
end
