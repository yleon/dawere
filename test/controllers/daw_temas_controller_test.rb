require 'test_helper'

class DawTemasControllerTest < ActionController::TestCase
  setup do
    @daw_tema = daw_temas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_temas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_tema" do
    assert_difference('DawTema.count') do
      post :create, daw_tema: {  }
    end

    assert_redirected_to daw_tema_path(assigns(:daw_tema))
  end

  test "should show daw_tema" do
    get :show, id: @daw_tema
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_tema
    assert_response :success
  end

  test "should update daw_tema" do
    patch :update, id: @daw_tema, daw_tema: {  }
    assert_redirected_to daw_tema_path(assigns(:daw_tema))
  end

  test "should destroy daw_tema" do
    assert_difference('DawTema.count', -1) do
      delete :destroy, id: @daw_tema
    end

    assert_redirected_to daw_temas_path
  end
end
