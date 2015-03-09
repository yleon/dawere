require 'test_helper'

class DawRegistrosControllerTest < ActionController::TestCase
  setup do
    @daw_registro = daw_registros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_registros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_registro" do
    assert_difference('DawRegistro.count') do
      post :create, daw_registro: { daw_tabla_id: @daw_registro.daw_tabla_id, reg_activo: @daw_registro.reg_activo, reg_boolean: @daw_registro.reg_boolean, reg_char: @daw_registro.reg_char, reg_descripcion: @daw_registro.reg_descripcion, reg_fecha: @daw_registro.reg_fecha, reg_float: @daw_registro.reg_float, reg_idregtab: @daw_registro.reg_idregtab, reg_varchar: @daw_registro.reg_varchar }
    end

    assert_redirected_to daw_registro_path(assigns(:daw_registro))
  end

  test "should show daw_registro" do
    get :show, id: @daw_registro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_registro
    assert_response :success
  end

  test "should update daw_registro" do
    patch :update, id: @daw_registro, daw_registro: { daw_tabla_id: @daw_registro.daw_tabla_id, reg_activo: @daw_registro.reg_activo, reg_boolean: @daw_registro.reg_boolean, reg_char: @daw_registro.reg_char, reg_descripcion: @daw_registro.reg_descripcion, reg_fecha: @daw_registro.reg_fecha, reg_float: @daw_registro.reg_float, reg_idregtab: @daw_registro.reg_idregtab, reg_varchar: @daw_registro.reg_varchar }
    assert_redirected_to daw_registro_path(assigns(:daw_registro))
  end

  test "should destroy daw_registro" do
    assert_difference('DawRegistro.count', -1) do
      delete :destroy, id: @daw_registro
    end

    assert_redirected_to daw_registros_path
  end
end
