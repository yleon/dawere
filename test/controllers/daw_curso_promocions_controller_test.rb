require 'test_helper'

class DawCursoPromocionsControllerTest < ActionController::TestCase
  setup do
    @daw_curso_promocion = daw_curso_promocions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_curso_promocions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_curso_promocion" do
    assert_difference('DawCursoPromocion.count') do
      post :create, daw_curso_promocion: { daw_promocion_id: @daw_curso_promocion.daw_promocion_id }
    end

    assert_redirected_to daw_curso_promocion_path(assigns(:daw_curso_promocion))
  end

  test "should show daw_curso_promocion" do
    get :show, id: @daw_curso_promocion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_curso_promocion
    assert_response :success
  end

  test "should update daw_curso_promocion" do
    patch :update, id: @daw_curso_promocion, daw_curso_promocion: { daw_promocion_id: @daw_curso_promocion.daw_promocion_id }
    assert_redirected_to daw_curso_promocion_path(assigns(:daw_curso_promocion))
  end

  test "should destroy daw_curso_promocion" do
    assert_difference('DawCursoPromocion.count', -1) do
      delete :destroy, id: @daw_curso_promocion
    end

    assert_redirected_to daw_curso_promocions_path
  end
end
