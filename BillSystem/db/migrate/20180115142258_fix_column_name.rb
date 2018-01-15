class FixColumnName < ActiveRecord::Migration[5.1]
  def change

  	rename_column :clients, :surname, :surename
  end
end
