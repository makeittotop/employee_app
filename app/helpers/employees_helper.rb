module EmployeesHelper
  def get_employee_departments
      deps = ['Modeling', 'Animation', 'Rigging', 'Lighting', 'Compositing', 'FX', 'Pipeline', 'IT', 'Texturing', 'Administration', 'Production Support', 'Human Resources']
      deps.sort
  end

  def get_employee_status
      status_list = ['Active', 'Inactive']
  end    
end
