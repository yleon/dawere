require 'test_helper'

class DawRolPersInscsControllerTest < ActionController::TestCase
  setup do
    @daw_rol_pers_insc = daw_rol_pers_inscs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_rol_pers_inscs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_rol_pers_insc" do
    assert_difference('DawRolPersInsc.count') do
      post :create, daw_rol_pers_insc: { daw_persona_id: @daw_rol_pers_insc.daw_persona_id, rpi_tiporol: @daw_rol_pers_insc.rpi_tiporol }
    end

    assert_redirected_to daw_rol_pers_insc_path(assigns(:daw_rol_pers_insc))
  end

  test "should show daw_rol_pers_insc" do
    get :show, id: @daw_rol_pers_insc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_rol_pers_insc
    assert_response :success
  end

  test "should update daw_rol_pers_insc" do
    patch :update, id: @daw_rol_pers_insc, daw_rol_pers_insc: { daw_persona_id: @daw_rol_pers_insc.daw_persona_id, rpi_tiporol: @daw_rol_pers_insc.rpi_tiporol }
    assert_redirected_to daw_rol_pers_insc_path(assigns(:daw_rol_pers_insc))
  end

  test "should destroy daw_rol_pers_insc" do
    assert_difference('DawRolPersInsc.count', -1) do
      delete :destroy, id: @daw_rol_pers_insc
    end

    assert_redirected_to daw_rol_pers_inscs_path
  end
end
