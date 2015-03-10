require 'test_helper'

class DawMatriculasControllerTest < ActionController::TestCase
  setup do
    @daw_matricula = daw_matriculas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_matriculas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_matricula" do
    assert_difference('DawMatricula.count') do
      post :create, daw_matricula: {  }
    end

    assert_redirected_to daw_matricula_path(assigns(:daw_matricula))
  end

  test "should show daw_matricula" do
    get :show, id: @daw_matricula
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_matricula
    assert_response :success
  end

  test "should update daw_matricula" do
    patch :update, id: @daw_matricula, daw_matricula: {  }
    assert_redirected_to daw_matricula_path(assigns(:daw_matricula))
  end

  test "should destroy daw_matricula" do
    assert_difference('DawMatricula.count', -1) do
      delete :destroy, id: @daw_matricula
    end

    assert_redirected_to daw_matriculas_path
  end
end
