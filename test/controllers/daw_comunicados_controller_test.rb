require 'test_helper'

class DawComunicadosControllerTest < ActionController::TestCase
  setup do
    @daw_comunicado = daw_comunicados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_comunicados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_comunicado" do
    assert_difference('DawComunicado.count') do
      post :create, daw_comunicado: { com_estado: @daw_comunicado.com_estado, com_fechaenvio: @daw_comunicado.com_fechaenvio, com_nombre: @daw_comunicado.com_nombre, com_texto: @daw_comunicado.com_texto, com_tipocomunicado: @daw_comunicado.com_tipocomunicado }
    end

    assert_redirected_to daw_comunicado_path(assigns(:daw_comunicado))
  end

  test "should show daw_comunicado" do
    get :show, id: @daw_comunicado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_comunicado
    assert_response :success
  end

  test "should update daw_comunicado" do
    patch :update, id: @daw_comunicado, daw_comunicado: { com_estado: @daw_comunicado.com_estado, com_fechaenvio: @daw_comunicado.com_fechaenvio, com_nombre: @daw_comunicado.com_nombre, com_texto: @daw_comunicado.com_texto, com_tipocomunicado: @daw_comunicado.com_tipocomunicado }
    assert_redirected_to daw_comunicado_path(assigns(:daw_comunicado))
  end

  test "should destroy daw_comunicado" do
    assert_difference('DawComunicado.count', -1) do
      delete :destroy, id: @daw_comunicado
    end

    assert_redirected_to daw_comunicados_path
  end
end
