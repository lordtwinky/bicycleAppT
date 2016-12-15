class AddAddress2ToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :address2, :string
  end
end
