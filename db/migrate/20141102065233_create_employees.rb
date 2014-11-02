class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :employee_code
      t.string :personal_email
      t.string :phone_number
      t.string :department
      t.string :status
      t.date :join_date
      t.date :end_date

      t.timestamps
    end
  end
end
