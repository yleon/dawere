require 'test_helper'

class DawLogTransaccionsControllerTest < ActionController::TestCase
  setup do
    @daw_log_transaccion = daw_log_transaccions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_log_transaccions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_log_transaccion" do
    assert_difference('DawLogTransaccion.count') do
      post :create, daw_log_transaccion: { logt_argumento1: @daw_log_transaccion.logt_argumento1, logt_argumento2: @daw_log_transaccion.logt_argumento2, logt_descripcion: @daw_log_transaccion.logt_descripcion, logt_estado: @daw_log_transaccion.logt_estado, logt_fecha: @daw_log_transaccion.logt_fecha, logt_sesion: @daw_log_transaccion.logt_sesion, logt_transaccion: @daw_log_transaccion.logt_transaccion }
    end

    assert_redirected_to daw_log_transaccion_path(assigns(:daw_log_transaccion))
  end

  test "should show daw_log_transaccion" do
    get :show, id: @daw_log_transaccion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_log_transaccion
    assert_response :success
  end

  test "should update daw_log_transaccion" do
    patch :update, id: @daw_log_transaccion, daw_log_transaccion: { logt_argumento1: @daw_log_transaccion.logt_argumento1, logt_argumento2: @daw_log_transaccion.logt_argumento2, logt_descripcion: @daw_log_transaccion.logt_descripcion, logt_estado: @daw_log_transaccion.logt_estado, logt_fecha: @daw_log_transaccion.logt_fecha, logt_sesion: @daw_log_transaccion.logt_sesion, logt_transaccion: @daw_log_transaccion.logt_transaccion }
    assert_redirected_to daw_log_transaccion_path(assigns(:daw_log_transaccion))
  end

  test "should destroy daw_log_transaccion" do
    assert_difference('DawLogTransaccion.count', -1) do
      delete :destroy, id: @daw_log_transaccion
    end

    assert_redirected_to daw_log_transaccions_path
  end
end
