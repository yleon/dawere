require 'test_helper'

class DawHistCambiosControllerTest < ActionController::TestCase
  setup do
    @daw_hist_cambio = daw_hist_cambios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_hist_cambios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_hist_cambio" do
    assert_difference('DawHistCambio.count') do
      post :create, daw_hist_cambio: { hcam_campo: @daw_hist_cambio.hcam_campo, hcam_descripcion: @daw_hist_cambio.hcam_descripcion, hcam_estado: @daw_hist_cambio.hcam_estado, hcam_fecha: @daw_hist_cambio.hcam_fecha, hcam_idregistro: @daw_hist_cambio.hcam_idregistro, hcam_idtabla: @daw_hist_cambio.hcam_idtabla, hcam_login: @daw_hist_cambio.hcam_login }
    end

    assert_redirected_to daw_hist_cambio_path(assigns(:daw_hist_cambio))
  end

  test "should show daw_hist_cambio" do
    get :show, id: @daw_hist_cambio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_hist_cambio
    assert_response :success
  end

  test "should update daw_hist_cambio" do
    patch :update, id: @daw_hist_cambio, daw_hist_cambio: { hcam_campo: @daw_hist_cambio.hcam_campo, hcam_descripcion: @daw_hist_cambio.hcam_descripcion, hcam_estado: @daw_hist_cambio.hcam_estado, hcam_fecha: @daw_hist_cambio.hcam_fecha, hcam_idregistro: @daw_hist_cambio.hcam_idregistro, hcam_idtabla: @daw_hist_cambio.hcam_idtabla, hcam_login: @daw_hist_cambio.hcam_login }
    assert_redirected_to daw_hist_cambio_path(assigns(:daw_hist_cambio))
  end

  test "should destroy daw_hist_cambio" do
    assert_difference('DawHistCambio.count', -1) do
      delete :destroy, id: @daw_hist_cambio
    end

    assert_redirected_to daw_hist_cambios_path
  end
end
