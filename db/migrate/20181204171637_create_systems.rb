class CreateSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :systems do |t|
      t.str :name
      t.text :description

      t.timestamps
    end
  end
end
