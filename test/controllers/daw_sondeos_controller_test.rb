require 'test_helper'

class DawSondeosControllerTest < ActionController::TestCase
  setup do
    @daw_sondeo = daw_sondeos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_sondeos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_sondeo" do
    assert_difference('DawSondeo.count') do
      post :create, daw_sondeo: { son_descripcion: @daw_sondeo.son_descripcion, son_nombre: @daw_sondeo.son_nombre, son_tipoencuesta: @daw_sondeo.son_tipoencuesta }
    end

    assert_redirected_to daw_sondeo_path(assigns(:daw_sondeo))
  end

  test "should show daw_sondeo" do
    get :show, id: @daw_sondeo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_sondeo
    assert_response :success
  end

  test "should update daw_sondeo" do
    patch :update, id: @daw_sondeo, daw_sondeo: { son_descripcion: @daw_sondeo.son_descripcion, son_nombre: @daw_sondeo.son_nombre, son_tipoencuesta: @daw_sondeo.son_tipoencuesta }
    assert_redirected_to daw_sondeo_path(assigns(:daw_sondeo))
  end

  test "should destroy daw_sondeo" do
    assert_difference('DawSondeo.count', -1) do
      delete :destroy, id: @daw_sondeo
    end

    assert_redirected_to daw_sondeos_path
  end
end
