require 'test_helper'

class DawActividadsControllerTest < ActionController::TestCase
  setup do
    @daw_actividad = daw_actividads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_actividads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_actividad" do
    assert_difference('DawActividad.count') do
      post :create, daw_actividad: {  }
    end

    assert_redirected_to daw_actividad_path(assigns(:daw_actividad))
  end

  test "should show daw_actividad" do
    get :show, id: @daw_actividad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_actividad
    assert_response :success
  end

  test "should update daw_actividad" do
    patch :update, id: @daw_actividad, daw_actividad: {  }
    assert_redirected_to daw_actividad_path(assigns(:daw_actividad))
  end

  test "should destroy daw_actividad" do
    assert_difference('DawActividad.count', -1) do
      delete :destroy, id: @daw_actividad
    end

    assert_redirected_to daw_actividads_path
  end
end
