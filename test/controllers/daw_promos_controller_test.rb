require 'test_helper'

class DawPromosControllerTest < ActionController::TestCase
  setup do
    @daw_promo = daw_promos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_promos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_promo" do
    assert_difference('DawPromo.count') do
      post :create, daw_promo: { pro_estado: @daw_promo.pro_estado, pro_fechafin: @daw_promo.pro_fechafin, pro_fechaini: @daw_promo.pro_fechaini, pro_nombre: @daw_promo.pro_nombre, pro_porcentaje: @daw_promo.pro_porcentaje, pro_tipopromocion: @daw_promo.pro_tipopromocion }
    end

    assert_redirected_to daw_promo_path(assigns(:daw_promo))
  end

  test "should show daw_promo" do
    get :show, id: @daw_promo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_promo
    assert_response :success
  end

  test "should update daw_promo" do
    patch :update, id: @daw_promo, daw_promo: { pro_estado: @daw_promo.pro_estado, pro_fechafin: @daw_promo.pro_fechafin, pro_fechaini: @daw_promo.pro_fechaini, pro_nombre: @daw_promo.pro_nombre, pro_porcentaje: @daw_promo.pro_porcentaje, pro_tipopromocion: @daw_promo.pro_tipopromocion }
    assert_redirected_to daw_promo_path(assigns(:daw_promo))
  end

  test "should destroy daw_promo" do
    assert_difference('DawPromo.count', -1) do
      delete :destroy, id: @daw_promo
    end

    assert_redirected_to daw_promos_path
  end
end
