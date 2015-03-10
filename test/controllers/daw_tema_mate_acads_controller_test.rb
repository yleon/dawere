require 'test_helper'

class DawTemaMateAcadsControllerTest < ActionController::TestCase
  setup do
    @daw_tema_mate_acad = daw_tema_mate_acads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_tema_mate_acads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_tema_mate_acad" do
    assert_difference('DawTemaMateAcad.count') do
      post :create, daw_tema_mate_acad: {  }
    end

    assert_redirected_to daw_tema_mate_acad_path(assigns(:daw_tema_mate_acad))
  end

  test "should show daw_tema_mate_acad" do
    get :show, id: @daw_tema_mate_acad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_tema_mate_acad
    assert_response :success
  end

  test "should update daw_tema_mate_acad" do
    patch :update, id: @daw_tema_mate_acad, daw_tema_mate_acad: {  }
    assert_redirected_to daw_tema_mate_acad_path(assigns(:daw_tema_mate_acad))
  end

  test "should destroy daw_tema_mate_acad" do
    assert_difference('DawTemaMateAcad.count', -1) do
      delete :destroy, id: @daw_tema_mate_acad
    end

    assert_redirected_to daw_tema_mate_acads_path
  end
end
