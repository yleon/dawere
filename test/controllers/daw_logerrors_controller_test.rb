require 'test_helper'

class DawLogerrorsControllerTest < ActionController::TestCase
  setup do
    @daw_logerror = daw_logerrors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_logerrors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_logerror" do
    assert_difference('DawLogerror.count') do
      post :create, daw_logerror: { loge_argumento1: @daw_logerror.loge_argumento1, loge_argumento2: @daw_logerror.loge_argumento2, loge_descripcion: @daw_logerror.loge_descripcion, loge_error: @daw_logerror.loge_error, loge_errorbd: @daw_logerror.loge_errorbd, loge_estado: @daw_logerror.loge_estado, loge_fecha: @daw_logerror.loge_fecha, loge_sesion: @daw_logerror.loge_sesion }
    end

    assert_redirected_to daw_logerror_path(assigns(:daw_logerror))
  end

  test "should show daw_logerror" do
    get :show, id: @daw_logerror
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_logerror
    assert_response :success
  end

  test "should update daw_logerror" do
    patch :update, id: @daw_logerror, daw_logerror: { loge_argumento1: @daw_logerror.loge_argumento1, loge_argumento2: @daw_logerror.loge_argumento2, loge_descripcion: @daw_logerror.loge_descripcion, loge_error: @daw_logerror.loge_error, loge_errorbd: @daw_logerror.loge_errorbd, loge_estado: @daw_logerror.loge_estado, loge_fecha: @daw_logerror.loge_fecha, loge_sesion: @daw_logerror.loge_sesion }
    assert_redirected_to daw_logerror_path(assigns(:daw_logerror))
  end

  test "should destroy daw_logerror" do
    assert_difference('DawLogerror.count', -1) do
      delete :destroy, id: @daw_logerror
    end

    assert_redirected_to daw_logerrors_path
  end
end
