require 'test_helper'

class DawCursoSondeosControllerTest < ActionController::TestCase
  setup do
    @daw_curso_sondeo = daw_curso_sondeos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_curso_sondeos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_curso_sondeo" do
    assert_difference('DawCursoSondeo.count') do
      post :create, daw_curso_sondeo: { cur_son_periodo: @daw_curso_sondeo.cur_son_periodo, daw_sondeo_id: @daw_curso_sondeo.daw_sondeo_id }
    end

    assert_redirected_to daw_curso_sondeo_path(assigns(:daw_curso_sondeo))
  end

  test "should show daw_curso_sondeo" do
    get :show, id: @daw_curso_sondeo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_curso_sondeo
    assert_response :success
  end

  test "should update daw_curso_sondeo" do
    patch :update, id: @daw_curso_sondeo, daw_curso_sondeo: { cur_son_periodo: @daw_curso_sondeo.cur_son_periodo, daw_sondeo_id: @daw_curso_sondeo.daw_sondeo_id }
    assert_redirected_to daw_curso_sondeo_path(assigns(:daw_curso_sondeo))
  end

  test "should destroy daw_curso_sondeo" do
    assert_difference('DawCursoSondeo.count', -1) do
      delete :destroy, id: @daw_curso_sondeo
    end

    assert_redirected_to daw_curso_sondeos_path
  end
end
