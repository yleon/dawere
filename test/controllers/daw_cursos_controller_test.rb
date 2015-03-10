require 'test_helper'

class DawCursosControllerTest < ActionController::TestCase
  setup do
    @daw_curso = daw_cursos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_cursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_curso" do
    assert_difference('DawCurso.count') do
      post :create, daw_curso: {  }
    end

    assert_redirected_to daw_curso_path(assigns(:daw_curso))
  end

  test "should show daw_curso" do
    get :show, id: @daw_curso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_curso
    assert_response :success
  end

  test "should update daw_curso" do
    patch :update, id: @daw_curso, daw_curso: {  }
    assert_redirected_to daw_curso_path(assigns(:daw_curso))
  end

  test "should destroy daw_curso" do
    assert_difference('DawCurso.count', -1) do
      delete :destroy, id: @daw_curso
    end

    assert_redirected_to daw_cursos_path
  end
end
