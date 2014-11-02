class RemovePersonalPhoneFromEmployee < ActiveRecord::Migration
  def change
    remove_column :employees, :personal_phone, :string
  end
end
