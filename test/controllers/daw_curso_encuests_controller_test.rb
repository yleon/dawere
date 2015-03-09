require 'test_helper'

class DawCursoEncuestsControllerTest < ActionController::TestCase
  setup do
    @daw_curso_encuest = daw_curso_encuests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_curso_encuests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_curso_encuest" do
    assert_difference('DawCursoEncuest.count') do
      post :create, daw_curso_encuest: { curenc_periodo: @daw_curso_encuest.curenc_periodo, daw_encuest_id: @daw_curso_encuest.daw_encuest_id }
    end

    assert_redirected_to daw_curso_encuest_path(assigns(:daw_curso_encuest))
  end

  test "should show daw_curso_encuest" do
    get :show, id: @daw_curso_encuest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_curso_encuest
    assert_response :success
  end

  test "should update daw_curso_encuest" do
    patch :update, id: @daw_curso_encuest, daw_curso_encuest: { curenc_periodo: @daw_curso_encuest.curenc_periodo, daw_encuest_id: @daw_curso_encuest.daw_encuest_id }
    assert_redirected_to daw_curso_encuest_path(assigns(:daw_curso_encuest))
  end

  test "should destroy daw_curso_encuest" do
    assert_difference('DawCursoEncuest.count', -1) do
      delete :destroy, id: @daw_curso_encuest
    end

    assert_redirected_to daw_curso_encuests_path
  end
end
