require 'test_helper'

class DawPeriodoAcadsControllerTest < ActionController::TestCase
  setup do
    @daw_periodo_acad = daw_periodo_acads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_periodo_acads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_periodo_acad" do
    assert_difference('DawPeriodoAcad.count') do
      post :create, daw_periodo_acad: {  }
    end

    assert_redirected_to daw_periodo_acad_path(assigns(:daw_periodo_acad))
  end

  test "should show daw_periodo_acad" do
    get :show, id: @daw_periodo_acad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_periodo_acad
    assert_response :success
  end

  test "should update daw_periodo_acad" do
    patch :update, id: @daw_periodo_acad, daw_periodo_acad: {  }
    assert_redirected_to daw_periodo_acad_path(assigns(:daw_periodo_acad))
  end

  test "should destroy daw_periodo_acad" do
    assert_difference('DawPeriodoAcad.count', -1) do
      delete :destroy, id: @daw_periodo_acad
    end

    assert_redirected_to daw_periodo_acads_path
  end
end
