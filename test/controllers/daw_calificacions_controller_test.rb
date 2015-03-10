require 'test_helper'

class DawCalificacionsControllerTest < ActionController::TestCase
  setup do
    @daw_calificacion = daw_calificacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_calificacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_calificacion" do
    assert_difference('DawCalificacion.count') do
      post :create, daw_calificacion: { calif_fecha: @daw_calificacion.calif_fecha, calif_notaObtenida: @daw_calificacion.calif_notaObtenida, calif_presento: @daw_calificacion.calif_presento }
    end

    assert_redirected_to daw_calificacion_path(assigns(:daw_calificacion))
  end

  test "should show daw_calificacion" do
    get :show, id: @daw_calificacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_calificacion
    assert_response :success
  end

  test "should update daw_calificacion" do
    patch :update, id: @daw_calificacion, daw_calificacion: { calif_fecha: @daw_calificacion.calif_fecha, calif_notaObtenida: @daw_calificacion.calif_notaObtenida, calif_presento: @daw_calificacion.calif_presento }
    assert_redirected_to daw_calificacion_path(assigns(:daw_calificacion))
  end

  test "should destroy daw_calificacion" do
    assert_difference('DawCalificacion.count', -1) do
      delete :destroy, id: @daw_calificacion
    end

    assert_redirected_to daw_calificacions_path
  end
end
