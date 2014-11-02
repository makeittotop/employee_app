class RemoveEmployeeCodeFromEmployee < ActiveRecord::Migration
  def change
    remove_column :employees, :employee_code, :string
  end
end
