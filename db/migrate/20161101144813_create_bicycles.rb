class CreateBicycles < ActiveRecord::Migration
  def change
    create_table :bicycles do |t|
      t.string :modelName
      t.string :colour
      t.boolean :secondHand
      t.float :purchaseCost
      t.float :rentCostDay
      t.string :frame
      t.string :typeOfBicycle
      t.string :image

      t.timestamps
    end
  end
end
