require 'test_helper'

class DawOpcionsControllerTest < ActionController::TestCase
  setup do
    @daw_opcion = daw_opcions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_opcions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_opcion" do
    assert_difference('DawOpcion.count') do
      post :create, daw_opcion: {  }
    end

    assert_redirected_to daw_opcion_path(assigns(:daw_opcion))
  end

  test "should show daw_opcion" do
    get :show, id: @daw_opcion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_opcion
    assert_response :success
  end

  test "should update daw_opcion" do
    patch :update, id: @daw_opcion, daw_opcion: {  }
    assert_redirected_to daw_opcion_path(assigns(:daw_opcion))
  end

  test "should destroy daw_opcion" do
    assert_difference('DawOpcion.count', -1) do
      delete :destroy, id: @daw_opcion
    end

    assert_redirected_to daw_opcions_path
  end
end
