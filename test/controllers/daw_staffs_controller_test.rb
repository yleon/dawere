require 'test_helper'

class DawStaffsControllerTest < ActionController::TestCase
  setup do
    @daw_staff = daw_staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_staff" do
    assert_difference('DawStaff.count') do
      post :create, daw_staff: { staff_estado: @daw_staff.staff_estado, staff_fechaingr: @daw_staff.staff_fechaingr, staff_fechasalida: @daw_staff.staff_fechasalida }
    end

    assert_redirected_to daw_staff_path(assigns(:daw_staff))
  end

  test "should show daw_staff" do
    get :show, id: @daw_staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_staff
    assert_response :success
  end

  test "should update daw_staff" do
    patch :update, id: @daw_staff, daw_staff: { staff_estado: @daw_staff.staff_estado, staff_fechaingr: @daw_staff.staff_fechaingr, staff_fechasalida: @daw_staff.staff_fechasalida }
    assert_redirected_to daw_staff_path(assigns(:daw_staff))
  end

  test "should destroy daw_staff" do
    assert_difference('DawStaff.count', -1) do
      delete :destroy, id: @daw_staff
    end

    assert_redirected_to daw_staffs_path
  end
end
