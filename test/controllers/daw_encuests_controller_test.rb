require 'test_helper'

class DawEncuestsControllerTest < ActionController::TestCase
  setup do
    @daw_encuest = daw_encuests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_encuests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_encuest" do
    assert_difference('DawEncuest.count') do
      post :create, daw_encuest: { enc_descripcion: @daw_encuest.enc_descripcion, enc_nombre: @daw_encuest.enc_nombre, enc_tipoencuest: @daw_encuest.enc_tipoencuest }
    end

    assert_redirected_to daw_encuest_path(assigns(:daw_encuest))
  end

  test "should show daw_encuest" do
    get :show, id: @daw_encuest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_encuest
    assert_response :success
  end

  test "should update daw_encuest" do
    patch :update, id: @daw_encuest, daw_encuest: { enc_descripcion: @daw_encuest.enc_descripcion, enc_nombre: @daw_encuest.enc_nombre, enc_tipoencuest: @daw_encuest.enc_tipoencuest }
    assert_redirected_to daw_encuest_path(assigns(:daw_encuest))
  end

  test "should destroy daw_encuest" do
    assert_difference('DawEncuest.count', -1) do
      delete :destroy, id: @daw_encuest
    end

    assert_redirected_to daw_encuests_path
  end
end
