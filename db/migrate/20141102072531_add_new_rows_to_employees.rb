class AddNewRowsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :employee_code, :string
    add_index :employees, :employee_code, unique: true
    add_column :employees, :personal_email, :string
    add_index :employees, :personal_email, unique: true
    add_column :employees, :personal_phone, :string
    add_index :employees, :personal_phone, unique: true
  end
end
