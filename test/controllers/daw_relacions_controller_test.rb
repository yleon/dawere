require 'test_helper'

class DawRelacionsControllerTest < ActionController::TestCase
  setup do
    @daw_relacion = daw_relacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_relacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_relacion" do
    assert_difference('DawRelacion.count') do
      post :create, daw_relacion: { daw_persona_id: @daw_relacion.daw_persona_id, daw_persona_id: @daw_relacion.daw_persona_id, rela_tiporepresentante: @daw_relacion.rela_tiporepresentante }
    end

    assert_redirected_to daw_relacion_path(assigns(:daw_relacion))
  end

  test "should show daw_relacion" do
    get :show, id: @daw_relacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_relacion
    assert_response :success
  end

  test "should update daw_relacion" do
    patch :update, id: @daw_relacion, daw_relacion: { daw_persona_id: @daw_relacion.daw_persona_id, daw_persona_id: @daw_relacion.daw_persona_id, rela_tiporepresentante: @daw_relacion.rela_tiporepresentante }
    assert_redirected_to daw_relacion_path(assigns(:daw_relacion))
  end

  test "should destroy daw_relacion" do
    assert_difference('DawRelacion.count', -1) do
      delete :destroy, id: @daw_relacion
    end

    assert_redirected_to daw_relacions_path
  end
end
