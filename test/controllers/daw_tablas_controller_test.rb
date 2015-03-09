require 'test_helper'

class DawTablasControllerTest < ActionController::TestCase
  setup do
    @daw_tabla = daw_tablas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_tablas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_tabla" do
    assert_difference('DawTabla.count') do
      post :create, daw_tabla: { tab_nemonico: @daw_tabla.tab_nemonico, tab_nombre: @daw_tabla.tab_nombre }
    end

    assert_redirected_to daw_tabla_path(assigns(:daw_tabla))
  end

  test "should show daw_tabla" do
    get :show, id: @daw_tabla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_tabla
    assert_response :success
  end

  test "should update daw_tabla" do
    patch :update, id: @daw_tabla, daw_tabla: { tab_nemonico: @daw_tabla.tab_nemonico, tab_nombre: @daw_tabla.tab_nombre }
    assert_redirected_to daw_tabla_path(assigns(:daw_tabla))
  end

  test "should destroy daw_tabla" do
    assert_difference('DawTabla.count', -1) do
      delete :destroy, id: @daw_tabla
    end

    assert_redirected_to daw_tablas_path
  end
end
