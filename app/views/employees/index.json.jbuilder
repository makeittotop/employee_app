json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :last_name, :employee_code, :personal_email, :phone_number, :department, :status, :join_date, :end_date
  json.url employee_url(employee, format: :json)
end
