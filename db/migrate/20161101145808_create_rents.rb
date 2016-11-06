class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.integer :customer_id
      t.integer :bicycle_id
      t.integer :numOfDays
      t.date :dateOfRent

      t.timestamps
    end
  end
end
