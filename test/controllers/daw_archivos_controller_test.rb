require 'test_helper'

class DawArchivosControllerTest < ActionController::TestCase
  setup do
    @daw_archivo = daw_archivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_archivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_archivo" do
    assert_difference('DawArchivo.count') do
      post :create, daw_archivo: {  }
    end

    assert_redirected_to daw_archivo_path(assigns(:daw_archivo))
  end

  test "should show daw_archivo" do
    get :show, id: @daw_archivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_archivo
    assert_response :success
  end

  test "should update daw_archivo" do
    patch :update, id: @daw_archivo, daw_archivo: {  }
    assert_redirected_to daw_archivo_path(assigns(:daw_archivo))
  end

  test "should destroy daw_archivo" do
    assert_difference('DawArchivo.count', -1) do
      delete :destroy, id: @daw_archivo
    end

    assert_redirected_to daw_archivos_path
  end
end
