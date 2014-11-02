require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { department: @employee.department, employee_code: @employee.employee_code, end_date: @employee.end_date, first_name: @employee.first_name, join_date: @employee.join_date, last_name: @employee.last_name, personal_email: @employee.personal_email, phone_number: @employee.phone_number, status: @employee.status }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { department: @employee.department, employee_code: @employee.employee_code, end_date: @employee.end_date, first_name: @employee.first_name, join_date: @employee.join_date, last_name: @employee.last_name, personal_email: @employee.personal_email, phone_number: @employee.phone_number, status: @employee.status }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
