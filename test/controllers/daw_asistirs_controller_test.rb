require 'test_helper'

class DawAsistirsControllerTest < ActionController::TestCase
  setup do
    @daw_asistir = daw_asistirs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_asistirs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_asistir" do
    assert_difference('DawAsistir.count') do
      post :create, daw_asistir: { asist_fecha: @daw_asistir.asist_fecha }
    end

    assert_redirected_to daw_asistir_path(assigns(:daw_asistir))
  end

  test "should show daw_asistir" do
    get :show, id: @daw_asistir
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_asistir
    assert_response :success
  end

  test "should update daw_asistir" do
    patch :update, id: @daw_asistir, daw_asistir: { asist_fecha: @daw_asistir.asist_fecha }
    assert_redirected_to daw_asistir_path(assigns(:daw_asistir))
  end

  test "should destroy daw_asistir" do
    assert_difference('DawAsistir.count', -1) do
      delete :destroy, id: @daw_asistir
    end

    assert_redirected_to daw_asistirs_path
  end
end
