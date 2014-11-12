module EmployeesHelper
  def get_employee_departments type
      prod = %w{Modeling Animation Rigging Lighting Texturing Compositing FX}
      tech = %w|Information\ Technology Pipeline|
      supp = %w"Administration Human\ Resources Production\ Support"
      all = prod + tech + supp

      if type.equal? :prod
          prod
      elsif type.equal? :tech 
          tech
      elsif type.equal? :supp
          supp
      else 
          deps = prod + tech + supp 
          deps.sort
      end
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
