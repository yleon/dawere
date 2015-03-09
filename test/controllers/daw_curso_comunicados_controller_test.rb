require 'test_helper'

class DawCursoComunicadosControllerTest < ActionController::TestCase
  setup do
    @daw_curso_comunicado = daw_curso_comunicados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_curso_comunicados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_curso_comunicado" do
    assert_difference('DawCursoComunicado.count') do
      post :create, daw_curso_comunicado: { curcom_fechaenviado: @daw_curso_comunicado.curcom_fechaenviado, daw_comunicado_id: @daw_curso_comunicado.daw_comunicado_id }
    end

    assert_redirected_to daw_curso_comunicado_path(assigns(:daw_curso_comunicado))
  end

  test "should show daw_curso_comunicado" do
    get :show, id: @daw_curso_comunicado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_curso_comunicado
    assert_response :success
  end

  test "should update daw_curso_comunicado" do
    patch :update, id: @daw_curso_comunicado, daw_curso_comunicado: { curcom_fechaenviado: @daw_curso_comunicado.curcom_fechaenviado, daw_comunicado_id: @daw_curso_comunicado.daw_comunicado_id }
    assert_redirected_to daw_curso_comunicado_path(assigns(:daw_curso_comunicado))
  end

  test "should destroy daw_curso_comunicado" do
    assert_difference('DawCursoComunicado.count', -1) do
      delete :destroy, id: @daw_curso_comunicado
    end

    assert_redirected_to daw_curso_comunicados_path
  end
end
