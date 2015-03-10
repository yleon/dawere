require 'test_helper'

class DawTrabajosControllerTest < ActionController::TestCase
  setup do
    @daw_trabajo = daw_trabajos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_trabajos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_trabajo" do
    assert_difference('DawTrabajo.count') do
      post :create, daw_trabajo: { daw_persona_id: @daw_trabajo.daw_persona_id, trab_direccion: @daw_trabajo.trab_direccion, trab_estado: @daw_trabajo.trab_estado, trab_fecha: @daw_trabajo.trab_fecha, trab_nombre: @daw_trabajo.trab_nombre, trab_telefono: @daw_trabajo.trab_telefono, trab_tipo: @daw_trabajo.trab_tipo }
    end

    assert_redirected_to daw_trabajo_path(assigns(:daw_trabajo))
  end

  test "should show daw_trabajo" do
    get :show, id: @daw_trabajo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_trabajo
    assert_response :success
  end

  test "should update daw_trabajo" do
    patch :update, id: @daw_trabajo, daw_trabajo: { daw_persona_id: @daw_trabajo.daw_persona_id, trab_direccion: @daw_trabajo.trab_direccion, trab_estado: @daw_trabajo.trab_estado, trab_fecha: @daw_trabajo.trab_fecha, trab_nombre: @daw_trabajo.trab_nombre, trab_telefono: @daw_trabajo.trab_telefono, trab_tipo: @daw_trabajo.trab_tipo }
    assert_redirected_to daw_trabajo_path(assigns(:daw_trabajo))
  end

  test "should destroy daw_trabajo" do
    assert_difference('DawTrabajo.count', -1) do
      delete :destroy, id: @daw_trabajo
    end

    assert_redirected_to daw_trabajos_path
  end
end
