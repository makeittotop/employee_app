class Employee < ActiveRecord::Base
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :join_date, presence: true
    validates :code, presence: true, uniqueness: true
    validates :personal_email, presence: true, uniqueness: true
    validates :contact_number, presence: true, uniqueness: true
end
