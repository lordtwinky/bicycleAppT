class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :customer_id
      t.integer :bicycle_id
      t.integer :stars

      t.timestamps
    end
  end
end
