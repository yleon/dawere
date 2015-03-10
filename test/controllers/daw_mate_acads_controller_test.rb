require 'test_helper'

class DawMateAcadsControllerTest < ActionController::TestCase
  setup do
    @daw_mate_acad = daw_mate_acads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_mate_acads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_mate_acad" do
    assert_difference('DawMateAcad.count') do
      post :create, daw_mate_acad: {  }
    end

    assert_redirected_to daw_mate_acad_path(assigns(:daw_mate_acad))
  end

  test "should show daw_mate_acad" do
    get :show, id: @daw_mate_acad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_mate_acad
    assert_response :success
  end

  test "should update daw_mate_acad" do
    patch :update, id: @daw_mate_acad, daw_mate_acad: {  }
    assert_redirected_to daw_mate_acad_path(assigns(:daw_mate_acad))
  end

  test "should destroy daw_mate_acad" do
    assert_difference('DawMateAcad.count', -1) do
      delete :destroy, id: @daw_mate_acad
    end

    assert_redirected_to daw_mate_acads_path
  end
end
