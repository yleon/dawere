require 'test_helper'

class DawLugarsControllerTest < ActionController::TestCase
  setup do
    @daw_lugar = daw_lugars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_lugars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_lugar" do
    assert_difference('DawLugar.count') do
      post :create, daw_lugar: { daw_lugar_id: @daw_lugar.daw_lugar_id, lugar_nivel: @daw_lugar.lugar_nivel, lugar_nombre: @daw_lugar.lugar_nombre, lugar_tipo: @daw_lugar.lugar_tipo }
    end

    assert_redirected_to daw_lugar_path(assigns(:daw_lugar))
  end

  test "should show daw_lugar" do
    get :show, id: @daw_lugar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_lugar
    assert_response :success
  end

  test "should update daw_lugar" do
    patch :update, id: @daw_lugar, daw_lugar: { daw_lugar_id: @daw_lugar.daw_lugar_id, lugar_nivel: @daw_lugar.lugar_nivel, lugar_nombre: @daw_lugar.lugar_nombre, lugar_tipo: @daw_lugar.lugar_tipo }
    assert_redirected_to daw_lugar_path(assigns(:daw_lugar))
  end

  test "should destroy daw_lugar" do
    assert_difference('DawLugar.count', -1) do
      delete :destroy, id: @daw_lugar
    end

    assert_redirected_to daw_lugars_path
  end
end
