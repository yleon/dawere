require 'test_helper'

class DawCursoTemasControllerTest < ActionController::TestCase
  setup do
    @daw_curso_tema = daw_curso_temas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_curso_temas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_curso_tema" do
    assert_difference('DawCursoTema.count') do
      post :create, daw_curso_tema: {  }
    end

    assert_redirected_to daw_curso_tema_path(assigns(:daw_curso_tema))
  end

  test "should show daw_curso_tema" do
    get :show, id: @daw_curso_tema
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_curso_tema
    assert_response :success
  end

  test "should update daw_curso_tema" do
    patch :update, id: @daw_curso_tema, daw_curso_tema: {  }
    assert_redirected_to daw_curso_tema_path(assigns(:daw_curso_tema))
  end

  test "should destroy daw_curso_tema" do
    assert_difference('DawCursoTema.count', -1) do
      delete :destroy, id: @daw_curso_tema
    end

    assert_redirected_to daw_curso_temas_path
  end
end
