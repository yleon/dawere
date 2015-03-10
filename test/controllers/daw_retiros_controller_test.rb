require 'test_helper'

class DawRetirosControllerTest < ActionController::TestCase
  setup do
    @daw_retiro = daw_retiros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_retiros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_retiro" do
    assert_difference('DawRetiro.count') do
      post :create, daw_retiro: { daw_persona_id: @daw_retiro.daw_persona_id, ret_fecha: @daw_retiro.ret_fecha, ret_motivo: @daw_retiro.ret_motivo }
    end

    assert_redirected_to daw_retiro_path(assigns(:daw_retiro))
  end

  test "should show daw_retiro" do
    get :show, id: @daw_retiro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_retiro
    assert_response :success
  end

  test "should update daw_retiro" do
    patch :update, id: @daw_retiro, daw_retiro: { daw_persona_id: @daw_retiro.daw_persona_id, ret_fecha: @daw_retiro.ret_fecha, ret_motivo: @daw_retiro.ret_motivo }
    assert_redirected_to daw_retiro_path(assigns(:daw_retiro))
  end

  test "should destroy daw_retiro" do
    assert_difference('DawRetiro.count', -1) do
      delete :destroy, id: @daw_retiro
    end

    assert_redirected_to daw_retiros_path
  end
end
