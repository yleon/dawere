require 'test_helper'

class DawReclamosControllerTest < ActionController::TestCase
  setup do
    @daw_reclamo = daw_reclamos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_reclamos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_reclamo" do
    assert_difference('DawReclamo.count') do
      post :create, daw_reclamo: { daw_persona_id: @daw_reclamo.daw_persona_id, recl_atendido: @daw_reclamo.recl_atendido, recl_descripcion: @daw_reclamo.recl_descripcion, recl_fecha: @daw_reclamo.recl_fecha, recl_tiporeclamo: @daw_reclamo.recl_tiporeclamo }
    end

    assert_redirected_to daw_reclamo_path(assigns(:daw_reclamo))
  end

  test "should show daw_reclamo" do
    get :show, id: @daw_reclamo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_reclamo
    assert_response :success
  end

  test "should update daw_reclamo" do
    patch :update, id: @daw_reclamo, daw_reclamo: { daw_persona_id: @daw_reclamo.daw_persona_id, recl_atendido: @daw_reclamo.recl_atendido, recl_descripcion: @daw_reclamo.recl_descripcion, recl_fecha: @daw_reclamo.recl_fecha, recl_tiporeclamo: @daw_reclamo.recl_tiporeclamo }
    assert_redirected_to daw_reclamo_path(assigns(:daw_reclamo))
  end

  test "should destroy daw_reclamo" do
    assert_difference('DawReclamo.count', -1) do
      delete :destroy, id: @daw_reclamo
    end

    assert_redirected_to daw_reclamos_path
  end
end
