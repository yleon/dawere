require 'test_helper'

class DawGradosControllerTest < ActionController::TestCase
  setup do
    @daw_grado = daw_grados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_grados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_grado" do
    assert_difference('DawGrado.count') do
      post :create, daw_grado: {  }
    end

    assert_redirected_to daw_grado_path(assigns(:daw_grado))
  end

  test "should show daw_grado" do
    get :show, id: @daw_grado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_grado
    assert_response :success
  end

  test "should update daw_grado" do
    patch :update, id: @daw_grado, daw_grado: {  }
    assert_redirected_to daw_grado_path(assigns(:daw_grado))
  end

  test "should destroy daw_grado" do
    assert_difference('DawGrado.count', -1) do
      delete :destroy, id: @daw_grado
    end

    assert_redirected_to daw_grados_path
  end
end
