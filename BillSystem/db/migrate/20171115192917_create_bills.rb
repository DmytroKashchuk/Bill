class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.string :note
      t.date :Data
      t.integer :totalHour
      t.integer :totalEuro
      t.belongs_to :client, foreign_key: true

      t.timestamps
    end
  end
end
