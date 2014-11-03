class AddColumnsToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :date_of_birth, :date
    add_column :employees, :gender, :string
    add_column :employees, :country, :string
  end
end
