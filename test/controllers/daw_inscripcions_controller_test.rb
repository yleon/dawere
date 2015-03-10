require 'test_helper'

class DawInscripcionsControllerTest < ActionController::TestCase
  setup do
    @daw_inscripcion = daw_inscripcions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_inscripcions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_inscripcion" do
    assert_difference('DawInscripcion.count') do
      post :create, daw_inscripcion: { insc_estado: @daw_inscripcion.insc_estado, insc_estadoDoc: @daw_inscripcion.insc_estadoDoc, insc_estadoPago: @daw_inscripcion.insc_estadoPago, insc_fechafin: @daw_inscripcion.insc_fechafin, insc_fechaini: @daw_inscripcion.insc_fechaini, insc_tipo: @daw_inscripcion.insc_tipo }
    end

    assert_redirected_to daw_inscripcion_path(assigns(:daw_inscripcion))
  end

  test "should show daw_inscripcion" do
    get :show, id: @daw_inscripcion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_inscripcion
    assert_response :success
  end

  test "should update daw_inscripcion" do
    patch :update, id: @daw_inscripcion, daw_inscripcion: { insc_estado: @daw_inscripcion.insc_estado, insc_estadoDoc: @daw_inscripcion.insc_estadoDoc, insc_estadoPago: @daw_inscripcion.insc_estadoPago, insc_fechafin: @daw_inscripcion.insc_fechafin, insc_fechaini: @daw_inscripcion.insc_fechaini, insc_tipo: @daw_inscripcion.insc_tipo }
    assert_redirected_to daw_inscripcion_path(assigns(:daw_inscripcion))
  end

  test "should destroy daw_inscripcion" do
    assert_difference('DawInscripcion.count', -1) do
      delete :destroy, id: @daw_inscripcion
    end

    assert_redirected_to daw_inscripcions_path
  end
end
