require 'test_helper'

class DawCodigosControllerTest < ActionController::TestCase
  setup do
    @daw_codigo = daw_codigos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_codigos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_codigo" do
    assert_difference('DawCodigo.count') do
      post :create, daw_codigo: { cod_estado: @daw_codigo.cod_estado, cod_valor: @daw_codigo.cod_valor, daw_promocion_id: @daw_codigo.daw_promocion_id }
    end

    assert_redirected_to daw_codigo_path(assigns(:daw_codigo))
  end

  test "should show daw_codigo" do
    get :show, id: @daw_codigo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_codigo
    assert_response :success
  end

  test "should update daw_codigo" do
    patch :update, id: @daw_codigo, daw_codigo: { cod_estado: @daw_codigo.cod_estado, cod_valor: @daw_codigo.cod_valor, daw_promocion_id: @daw_codigo.daw_promocion_id }
    assert_redirected_to daw_codigo_path(assigns(:daw_codigo))
  end

  test "should destroy daw_codigo" do
    assert_difference('DawCodigo.count', -1) do
      delete :destroy, id: @daw_codigo
    end

    assert_redirected_to daw_codigos_path
  end
end
