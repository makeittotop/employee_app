class AddContactNumberToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :contact_number, :string
  end
end
