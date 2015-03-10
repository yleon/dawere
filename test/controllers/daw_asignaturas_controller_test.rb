require 'test_helper'

class DawAsignaturasControllerTest < ActionController::TestCase
  setup do
    @daw_asignatura = daw_asignaturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_asignaturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_asignatura" do
    assert_difference('DawAsignatura.count') do
      post :create, daw_asignatura: {  }
    end

    assert_redirected_to daw_asignatura_path(assigns(:daw_asignatura))
  end

  test "should show daw_asignatura" do
    get :show, id: @daw_asignatura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_asignatura
    assert_response :success
  end

  test "should update daw_asignatura" do
    patch :update, id: @daw_asignatura, daw_asignatura: {  }
    assert_redirected_to daw_asignatura_path(assigns(:daw_asignatura))
  end

  test "should destroy daw_asignatura" do
    assert_difference('DawAsignatura.count', -1) do
      delete :destroy, id: @daw_asignatura
    end

    assert_redirected_to daw_asignaturas_path
  end
end
