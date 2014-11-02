class RemovePhoneNumberFromEmployee < ActiveRecord::Migration
  def change
    remove_column :employees, :phone_number, :string
  end
end
