require 'test_helper'

class DawPromocionsControllerTest < ActionController::TestCase
  setup do
    @daw_promocion = daw_promocions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_promocions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_promocion" do
    assert_difference('DawPromocion.count') do
      post :create, daw_promocion: { pro_estado: @daw_promocion.pro_estado, pro_fechafin: @daw_promocion.pro_fechafin, pro_fechainicio: @daw_promocion.pro_fechainicio, pro_nombre: @daw_promocion.pro_nombre, pro_porcentaje: @daw_promocion.pro_porcentaje, pro_tipopromocion: @daw_promocion.pro_tipopromocion }
    end

    assert_redirected_to daw_promocion_path(assigns(:daw_promocion))
  end

  test "should show daw_promocion" do
    get :show, id: @daw_promocion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_promocion
    assert_response :success
  end

  test "should update daw_promocion" do
    patch :update, id: @daw_promocion, daw_promocion: { pro_estado: @daw_promocion.pro_estado, pro_fechafin: @daw_promocion.pro_fechafin, pro_fechainicio: @daw_promocion.pro_fechainicio, pro_nombre: @daw_promocion.pro_nombre, pro_porcentaje: @daw_promocion.pro_porcentaje, pro_tipopromocion: @daw_promocion.pro_tipopromocion }
    assert_redirected_to daw_promocion_path(assigns(:daw_promocion))
  end

  test "should destroy daw_promocion" do
    assert_difference('DawPromocion.count', -1) do
      delete :destroy, id: @daw_promocion
    end

    assert_redirected_to daw_promocions_path
  end
end
