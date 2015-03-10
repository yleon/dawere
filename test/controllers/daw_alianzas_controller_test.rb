require 'test_helper'

class DawAlianzasControllerTest < ActionController::TestCase
  setup do
    @daw_alianza = daw_alianzas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_alianzas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_alianza" do
    assert_difference('DawAlianza.count') do
      post :create, daw_alianza: { ali_tipojuridico: @daw_alianza.ali_tipojuridico }
    end

    assert_redirected_to daw_alianza_path(assigns(:daw_alianza))
  end

  test "should show daw_alianza" do
    get :show, id: @daw_alianza
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_alianza
    assert_response :success
  end

  test "should update daw_alianza" do
    patch :update, id: @daw_alianza, daw_alianza: { ali_tipojuridico: @daw_alianza.ali_tipojuridico }
    assert_redirected_to daw_alianza_path(assigns(:daw_alianza))
  end

  test "should destroy daw_alianza" do
    assert_difference('DawAlianza.count', -1) do
      delete :destroy, id: @daw_alianza
    end

    assert_redirected_to daw_alianzas_path
  end
end
