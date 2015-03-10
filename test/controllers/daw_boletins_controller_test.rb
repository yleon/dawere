require 'test_helper'

class DawBoletinsControllerTest < ActionController::TestCase
  setup do
    @daw_boletin = daw_boletins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_boletins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_boletin" do
    assert_difference('DawBoletin.count') do
      post :create, daw_boletin: { bltin_fechafin: @daw_boletin.bltin_fechafin, bltin_nota: @daw_boletin.bltin_nota, bltin_porcentaje: @daw_boletin.bltin_porcentaje, bltin_progresoAsist: @daw_boletin.bltin_progresoAsist, bltin_progresoEval: @daw_boletin.bltin_progresoEval }
    end

    assert_redirected_to daw_boletin_path(assigns(:daw_boletin))
  end

  test "should show daw_boletin" do
    get :show, id: @daw_boletin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_boletin
    assert_response :success
  end

  test "should update daw_boletin" do
    patch :update, id: @daw_boletin, daw_boletin: { bltin_fechafin: @daw_boletin.bltin_fechafin, bltin_nota: @daw_boletin.bltin_nota, bltin_porcentaje: @daw_boletin.bltin_porcentaje, bltin_progresoAsist: @daw_boletin.bltin_progresoAsist, bltin_progresoEval: @daw_boletin.bltin_progresoEval }
    assert_redirected_to daw_boletin_path(assigns(:daw_boletin))
  end

  test "should destroy daw_boletin" do
    assert_difference('DawBoletin.count', -1) do
      delete :destroy, id: @daw_boletin
    end

    assert_redirected_to daw_boletins_path
  end
end
