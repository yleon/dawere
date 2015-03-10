require 'test_helper'

class DawContratosControllerTest < ActionController::TestCase
  setup do
    @daw_contrato = daw_contratos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_contratos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_contrato" do
    assert_difference('DawContrato.count') do
      post :create, daw_contrato: { cont_archivo: @daw_contrato.cont_archivo, cont_descripcion: @daw_contrato.cont_descripcion, cont_fechafin: @daw_contrato.cont_fechafin, cont_fechaini: @daw_contrato.cont_fechaini, cont_tiempo: @daw_contrato.cont_tiempo, daw_persona_id: @daw_contrato.daw_persona_id }
    end

    assert_redirected_to daw_contrato_path(assigns(:daw_contrato))
  end

  test "should show daw_contrato" do
    get :show, id: @daw_contrato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_contrato
    assert_response :success
  end

  test "should update daw_contrato" do
    patch :update, id: @daw_contrato, daw_contrato: { cont_archivo: @daw_contrato.cont_archivo, cont_descripcion: @daw_contrato.cont_descripcion, cont_fechafin: @daw_contrato.cont_fechafin, cont_fechaini: @daw_contrato.cont_fechaini, cont_tiempo: @daw_contrato.cont_tiempo, daw_persona_id: @daw_contrato.daw_persona_id }
    assert_redirected_to daw_contrato_path(assigns(:daw_contrato))
  end

  test "should destroy daw_contrato" do
    assert_difference('DawContrato.count', -1) do
      delete :destroy, id: @daw_contrato
    end

    assert_redirected_to daw_contratos_path
  end
end
