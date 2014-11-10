module EmployeesHelper
  def get_employee_departments
      deps = ['Modeling', 'Animation', 'Rigging', 'Lighting', 'Compositing', 'FX', 'Pipeline', 'IT', 'Texturing', 'Administration', 'Production Support', 'Human Resources']
      deps.sort
  end

  def get_employee_status
      status_list = ['Active', 'Inactive']
  end    

  def get_gender
      status_list = ['Male', 'Female']
  end    

  def get_admin_list
      admin_list = ['abegail', 'abhishek']
  end    
end
