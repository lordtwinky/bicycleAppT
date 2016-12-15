class AddAttachmentToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :attachment, :string
  end
end
