class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :customer_id
      t.integer :bicycle_id
      t.date :dateOfPurchase

      t.timestamps
    end
  end
end
