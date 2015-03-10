require 'test_helper'

class DawDirectorsControllerTest < ActionController::TestCase
  setup do
    @daw_director = daw_directors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_directors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_director" do
    assert_difference('DawDirector.count') do
      post :create, daw_director: { dire_fechaingr: @daw_director.dire_fechaingr }
    end

    assert_redirected_to daw_director_path(assigns(:daw_director))
  end

  test "should show daw_director" do
    get :show, id: @daw_director
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_director
    assert_response :success
  end

  test "should update daw_director" do
    patch :update, id: @daw_director, daw_director: { dire_fechaingr: @daw_director.dire_fechaingr }
    assert_redirected_to daw_director_path(assigns(:daw_director))
  end

  test "should destroy daw_director" do
    assert_difference('DawDirector.count', -1) do
      delete :destroy, id: @daw_director
    end

    assert_redirected_to daw_directors_path
  end
end
