class CreateSheets < ActiveRecord::Migration[5.2]
  def change
    create_table :sheets do |t|
      t.string :name
      t.integer :level
      t.string :class
      t.string :race
      t.integer :hp
      t.integer :ac
      t.integer :usuario

      t.timestamps
    end
  end
end
