class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :surname
      t.string :fiscalCode
      t.integer :hourTariff

      t.timestamps
    end
  end
end
