class AcertaAPorraDaTabela < ActiveRecord::Migration[5.2]
  def change
      remove_column :sheets, :class
      add_column :sheets, :classe, :string
  end
end
