require 'test_helper'

class DawMatriculaPromocionsControllerTest < ActionController::TestCase
  setup do
    @daw_matricula_promocion = daw_matricula_promocions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_matricula_promocions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_matricula_promocion" do
    assert_difference('DawMatriculaPromocion.count') do
      post :create, daw_matricula_promocion: { daw_promocion_id: @daw_matricula_promocion.daw_promocion_id }
    end

    assert_redirected_to daw_matricula_promocion_path(assigns(:daw_matricula_promocion))
  end

  test "should show daw_matricula_promocion" do
    get :show, id: @daw_matricula_promocion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_matricula_promocion
    assert_response :success
  end

  test "should update daw_matricula_promocion" do
    patch :update, id: @daw_matricula_promocion, daw_matricula_promocion: { daw_promocion_id: @daw_matricula_promocion.daw_promocion_id }
    assert_redirected_to daw_matricula_promocion_path(assigns(:daw_matricula_promocion))
  end

  test "should destroy daw_matricula_promocion" do
    assert_difference('DawMatriculaPromocion.count', -1) do
      delete :destroy, id: @daw_matricula_promocion
    end

    assert_redirected_to daw_matricula_promocions_path
  end
end
