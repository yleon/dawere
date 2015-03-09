require 'test_helper'

class DawLogErrorsControllerTest < ActionController::TestCase
  setup do
    @daw_log_error = daw_log_errors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_log_errors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_log_error" do
    assert_difference('DawLogError.count') do
      post :create, daw_log_error: { loge_argumento1: @daw_log_error.loge_argumento1, loge_argumento2: @daw_log_error.loge_argumento2, loge_descripcion: @daw_log_error.loge_descripcion, loge_error: @daw_log_error.loge_error, loge_errorbd: @daw_log_error.loge_errorbd, loge_estado: @daw_log_error.loge_estado, loge_fecha: @daw_log_error.loge_fecha, loge_sesion: @daw_log_error.loge_sesion }
    end

    assert_redirected_to daw_log_error_path(assigns(:daw_log_error))
  end

  test "should show daw_log_error" do
    get :show, id: @daw_log_error
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_log_error
    assert_response :success
  end

  test "should update daw_log_error" do
    patch :update, id: @daw_log_error, daw_log_error: { loge_argumento1: @daw_log_error.loge_argumento1, loge_argumento2: @daw_log_error.loge_argumento2, loge_descripcion: @daw_log_error.loge_descripcion, loge_error: @daw_log_error.loge_error, loge_errorbd: @daw_log_error.loge_errorbd, loge_estado: @daw_log_error.loge_estado, loge_fecha: @daw_log_error.loge_fecha, loge_sesion: @daw_log_error.loge_sesion }
    assert_redirected_to daw_log_error_path(assigns(:daw_log_error))
  end

  test "should destroy daw_log_error" do
    assert_difference('DawLogError.count', -1) do
      delete :destroy, id: @daw_log_error
    end

    assert_redirected_to daw_log_errors_path
  end
end
