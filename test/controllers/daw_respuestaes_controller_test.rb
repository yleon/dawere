require 'test_helper'

class DawRespuestaesControllerTest < ActionController::TestCase
  setup do
    @daw_respuestae = daw_respuestaes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_respuestaes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_respuestae" do
    assert_difference('DawRespuestae.count') do
      post :create, daw_respuestae: { daw_preguntae_id: @daw_respuestae.daw_preguntae_id, res_fecha: @daw_respuestae.res_fecha, res_valor: @daw_respuestae.res_valor }
    end

    assert_redirected_to daw_respuestae_path(assigns(:daw_respuestae))
  end

  test "should show daw_respuestae" do
    get :show, id: @daw_respuestae
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_respuestae
    assert_response :success
  end

  test "should update daw_respuestae" do
    patch :update, id: @daw_respuestae, daw_respuestae: { daw_preguntae_id: @daw_respuestae.daw_preguntae_id, res_fecha: @daw_respuestae.res_fecha, res_valor: @daw_respuestae.res_valor }
    assert_redirected_to daw_respuestae_path(assigns(:daw_respuestae))
  end

  test "should destroy daw_respuestae" do
    assert_difference('DawRespuestae.count', -1) do
      delete :destroy, id: @daw_respuestae
    end

    assert_redirected_to daw_respuestaes_path
  end
end
