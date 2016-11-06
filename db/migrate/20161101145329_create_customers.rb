class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :userName
      t.string :phoneNum
      t.date :dob
      t.text :address
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
