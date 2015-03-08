require 'test_helper'

class DawHistoricoCambiosControllerTest < ActionController::TestCase
  setup do
    @daw_historico_cambio = daw_historico_cambios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_historico_cambios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_historico_cambio" do
    assert_difference('DawHistoricoCambio.count') do
      post :create, daw_historico_cambio: { his_cam_campo: @daw_historico_cambio.his_cam_campo, his_cam_descripcion: @daw_historico_cambio.his_cam_descripcion, his_cam_estado: @daw_historico_cambio.his_cam_estado, his_cam_fecha: @daw_historico_cambio.his_cam_fecha, his_cam_idregistro: @daw_historico_cambio.his_cam_idregistro, his_cam_idtabla: @daw_historico_cambio.his_cam_idtabla, his_cam_login: @daw_historico_cambio.his_cam_login }
    end

    assert_redirected_to daw_historico_cambio_path(assigns(:daw_historico_cambio))
  end

  test "should show daw_historico_cambio" do
    get :show, id: @daw_historico_cambio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_historico_cambio
    assert_response :success
  end

  test "should update daw_historico_cambio" do
    patch :update, id: @daw_historico_cambio, daw_historico_cambio: { his_cam_campo: @daw_historico_cambio.his_cam_campo, his_cam_descripcion: @daw_historico_cambio.his_cam_descripcion, his_cam_estado: @daw_historico_cambio.his_cam_estado, his_cam_fecha: @daw_historico_cambio.his_cam_fecha, his_cam_idregistro: @daw_historico_cambio.his_cam_idregistro, his_cam_idtabla: @daw_historico_cambio.his_cam_idtabla, his_cam_login: @daw_historico_cambio.his_cam_login }
    assert_redirected_to daw_historico_cambio_path(assigns(:daw_historico_cambio))
  end

  test "should destroy daw_historico_cambio" do
    assert_difference('DawHistoricoCambio.count', -1) do
      delete :destroy, id: @daw_historico_cambio
    end

    assert_redirected_to daw_historico_cambios_path
  end
end
