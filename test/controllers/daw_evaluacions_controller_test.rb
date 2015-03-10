require 'test_helper'

class DawEvaluacionsControllerTest < ActionController::TestCase
  setup do
    @daw_evaluacion = daw_evaluacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_evaluacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_evaluacion" do
    assert_difference('DawEvaluacion.count') do
      post :create, daw_evaluacion: {  }
    end

    assert_redirected_to daw_evaluacion_path(assigns(:daw_evaluacion))
  end

  test "should show daw_evaluacion" do
    get :show, id: @daw_evaluacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_evaluacion
    assert_response :success
  end

  test "should update daw_evaluacion" do
    patch :update, id: @daw_evaluacion, daw_evaluacion: {  }
    assert_redirected_to daw_evaluacion_path(assigns(:daw_evaluacion))
  end

  test "should destroy daw_evaluacion" do
    assert_difference('DawEvaluacion.count', -1) do
      delete :destroy, id: @daw_evaluacion
    end

    assert_redirected_to daw_evaluacions_path
  end
end
