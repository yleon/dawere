require 'test_helper'

class DawLogtransaccionsControllerTest < ActionController::TestCase
  setup do
    @daw_logtransaccion = daw_logtransaccions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_logtransaccions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_logtransaccion" do
    assert_difference('DawLogtransaccion.count') do
      post :create, daw_logtransaccion: { logt_argumento1: @daw_logtransaccion.logt_argumento1, logt_argumento2: @daw_logtransaccion.logt_argumento2, logt_descripcion: @daw_logtransaccion.logt_descripcion, logt_estado: @daw_logtransaccion.logt_estado, logt_fecha: @daw_logtransaccion.logt_fecha, logt_sesion: @daw_logtransaccion.logt_sesion, logt_transaccion: @daw_logtransaccion.logt_transaccion }
    end

    assert_redirected_to daw_logtransaccion_path(assigns(:daw_logtransaccion))
  end

  test "should show daw_logtransaccion" do
    get :show, id: @daw_logtransaccion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_logtransaccion
    assert_response :success
  end

  test "should update daw_logtransaccion" do
    patch :update, id: @daw_logtransaccion, daw_logtransaccion: { logt_argumento1: @daw_logtransaccion.logt_argumento1, logt_argumento2: @daw_logtransaccion.logt_argumento2, logt_descripcion: @daw_logtransaccion.logt_descripcion, logt_estado: @daw_logtransaccion.logt_estado, logt_fecha: @daw_logtransaccion.logt_fecha, logt_sesion: @daw_logtransaccion.logt_sesion, logt_transaccion: @daw_logtransaccion.logt_transaccion }
    assert_redirected_to daw_logtransaccion_path(assigns(:daw_logtransaccion))
  end

  test "should destroy daw_logtransaccion" do
    assert_difference('DawLogtransaccion.count', -1) do
      delete :destroy, id: @daw_logtransaccion
    end

    assert_redirected_to daw_logtransaccions_path
  end
end
