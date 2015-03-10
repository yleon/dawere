require 'test_helper'

class DawEstudiantesControllerTest < ActionController::TestCase
  setup do
    @daw_estudiante = daw_estudiantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_estudiantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_estudiante" do
    assert_difference('DawEstudiante.count') do
      post :create, daw_estudiante: { estu_biografia: @daw_estudiante.estu_biografia, estu_nacionalidad: @daw_estudiante.estu_nacionalidad }
    end

    assert_redirected_to daw_estudiante_path(assigns(:daw_estudiante))
  end

  test "should show daw_estudiante" do
    get :show, id: @daw_estudiante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_estudiante
    assert_response :success
  end

  test "should update daw_estudiante" do
    patch :update, id: @daw_estudiante, daw_estudiante: { estu_biografia: @daw_estudiante.estu_biografia, estu_nacionalidad: @daw_estudiante.estu_nacionalidad }
    assert_redirected_to daw_estudiante_path(assigns(:daw_estudiante))
  end

  test "should destroy daw_estudiante" do
    assert_difference('DawEstudiante.count', -1) do
      delete :destroy, id: @daw_estudiante
    end

    assert_redirected_to daw_estudiantes_path
  end
end
