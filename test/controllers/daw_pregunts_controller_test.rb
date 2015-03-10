require 'test_helper'

class DawPreguntsControllerTest < ActionController::TestCase
  setup do
    @daw_pregunt = daw_pregunts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_pregunts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_pregunt" do
    assert_difference('DawPregunt.count') do
      post :create, daw_pregunt: {  }
    end

    assert_redirected_to daw_pregunt_path(assigns(:daw_pregunt))
  end

  test "should show daw_pregunt" do
    get :show, id: @daw_pregunt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_pregunt
    assert_response :success
  end

  test "should update daw_pregunt" do
    patch :update, id: @daw_pregunt, daw_pregunt: {  }
    assert_redirected_to daw_pregunt_path(assigns(:daw_pregunt))
  end

  test "should destroy daw_pregunt" do
    assert_difference('DawPregunt.count', -1) do
      delete :destroy, id: @daw_pregunt
    end

    assert_redirected_to daw_pregunts_path
  end
end
