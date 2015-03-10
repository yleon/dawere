require 'test_helper'

class DawProfAsistsControllerTest < ActionController::TestCase
  setup do
    @daw_prof_asist = daw_prof_asists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_prof_asists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_prof_asist" do
    assert_difference('DawProfAsist.count') do
      post :create, daw_prof_asist: { pa_biografia: @daw_prof_asist.pa_biografia, pa_fechaingr: @daw_prof_asist.pa_fechaingr, pa_profesion: @daw_prof_asist.pa_profesion, pa_tipo: @daw_prof_asist.pa_tipo }
    end

    assert_redirected_to daw_prof_asist_path(assigns(:daw_prof_asist))
  end

  test "should show daw_prof_asist" do
    get :show, id: @daw_prof_asist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_prof_asist
    assert_response :success
  end

  test "should update daw_prof_asist" do
    patch :update, id: @daw_prof_asist, daw_prof_asist: { pa_biografia: @daw_prof_asist.pa_biografia, pa_fechaingr: @daw_prof_asist.pa_fechaingr, pa_profesion: @daw_prof_asist.pa_profesion, pa_tipo: @daw_prof_asist.pa_tipo }
    assert_redirected_to daw_prof_asist_path(assigns(:daw_prof_asist))
  end

  test "should destroy daw_prof_asist" do
    assert_difference('DawProfAsist.count', -1) do
      delete :destroy, id: @daw_prof_asist
    end

    assert_redirected_to daw_prof_asists_path
  end
end
