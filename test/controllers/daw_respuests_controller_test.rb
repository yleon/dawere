require 'test_helper'

class DawRespuestsControllerTest < ActionController::TestCase
  setup do
    @daw_respuest = daw_respuests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_respuests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_respuest" do
    assert_difference('DawRespuest.count') do
      post :create, daw_respuest: { resp_puntaje: @daw_respuest.resp_puntaje, resp_valor: @daw_respuest.resp_valor }
    end

    assert_redirected_to daw_respuest_path(assigns(:daw_respuest))
  end

  test "should show daw_respuest" do
    get :show, id: @daw_respuest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_respuest
    assert_response :success
  end

  test "should update daw_respuest" do
    patch :update, id: @daw_respuest, daw_respuest: { resp_puntaje: @daw_respuest.resp_puntaje, resp_valor: @daw_respuest.resp_valor }
    assert_redirected_to daw_respuest_path(assigns(:daw_respuest))
  end

  test "should destroy daw_respuest" do
    assert_difference('DawRespuest.count', -1) do
      delete :destroy, id: @daw_respuest
    end

    assert_redirected_to daw_respuests_path
  end
end
