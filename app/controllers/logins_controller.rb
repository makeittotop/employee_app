class LoginsController < ApplicationController
  include EmployeesHelper
  require 'uri'

  def create
    if employee = Employee.authenticate(params[:login], params[:password])
      session[:employee_id] = employee.id

      puts "===session id set: session[:current_user_id]}==="
      session[:employee_first_name] = employee.first_name

      if get_admin_list.include?(employee.first_name)
          puts "===Employee is admin==="
          session[:admin] = true
          flash[:success] = "You have succesfully logged in and you ARE a web admin."
          redirect_to :back
      else
          puts "===Employee is not admin==="
          flash[:success] = "You have succesfully logged in and you're NOT a web admin."
          redirect_to :back
      end
    else
      puts "===Login failed==="
      flash[:alert] = "Login failed! Check your credentials again."
      redirect_to :back
    end
  end
  
  def destroy
    session[:employee_id] = nil
    session[:employee_first_name] = nil
    session[:admin] = nil

    puts Rails.application.routes.recognize_path(request.referrer)[:action]

    if Rails.application.routes.recognize_path(request.referrer)[:action] == "edit" 
      flash[:alert] = "You are being redirected to the main page as you're NOT allowed to edit information once you log out."
      redirect_to root_path
    else
      flash[:success] = "You've successfully logged out."
      redirect_to :back
    end
  end
end
