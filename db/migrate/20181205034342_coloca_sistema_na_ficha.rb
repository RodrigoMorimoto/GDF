class ColocaSistemaNaFicha < ActiveRecord::Migration[5.2]
  def change
      add_column :sheets, :sistema, :integer
  end
end
