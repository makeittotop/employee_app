class RemoveEmployeeCodeFromEmployees < ActiveRecord::Migration
  def change
    remove_column :employees, :employee_code, :string
    remove_column :employees, :personal_email, :string
  end
end
