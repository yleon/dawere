require 'test_helper'

class DawPreguntaesControllerTest < ActionController::TestCase
  setup do
    @daw_preguntae = daw_preguntaes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_preguntaes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_preguntae" do
    assert_difference('DawPreguntae.count') do
      post :create, daw_preguntae: { daw_sondeo_id: @daw_preguntae.daw_sondeo_id, pre_encabezado: @daw_preguntae.pre_encabezado, pre_orden: @daw_preguntae.pre_orden }
    end

    assert_redirected_to daw_preguntae_path(assigns(:daw_preguntae))
  end

  test "should show daw_preguntae" do
    get :show, id: @daw_preguntae
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_preguntae
    assert_response :success
  end

  test "should update daw_preguntae" do
    patch :update, id: @daw_preguntae, daw_preguntae: { daw_sondeo_id: @daw_preguntae.daw_sondeo_id, pre_encabezado: @daw_preguntae.pre_encabezado, pre_orden: @daw_preguntae.pre_orden }
    assert_redirected_to daw_preguntae_path(assigns(:daw_preguntae))
  end

  test "should destroy daw_preguntae" do
    assert_difference('DawPreguntae.count', -1) do
      delete :destroy, id: @daw_preguntae
    end

    assert_redirected_to daw_preguntaes_path
  end
end
