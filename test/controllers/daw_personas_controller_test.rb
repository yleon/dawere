require 'test_helper'

class DawPersonasControllerTest < ActionController::TestCase
  setup do
    @daw_persona = daw_personas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_personas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_persona" do
    assert_difference('DawPersona.count') do
      post :create, daw_persona: { daw_lugar_id: @daw_persona.daw_lugar_id, daw_usuario_id: @daw_persona.daw_usuario_id, pers_cedula: @daw_persona.pers_cedula, pers_email: @daw_persona.pers_email, pers_estadocivil: @daw_persona.pers_estadocivil, pers_fechanac: @daw_persona.pers_fechanac, pers_foto: @daw_persona.pers_foto, pers_primerape: @daw_persona.pers_primerape, pers_primernom: @daw_persona.pers_primernom, pers_segundoape: @daw_persona.pers_segundoape, pers_segundonom: @daw_persona.pers_segundonom, pers_sexo: @daw_persona.pers_sexo, pers_tipopers: @daw_persona.pers_tipopers, pers_tlf1: @daw_persona.pers_tlf1, pers_tlf2: @daw_persona.pers_tlf2 }
    end

    assert_redirected_to daw_persona_path(assigns(:daw_persona))
  end

  test "should show daw_persona" do
    get :show, id: @daw_persona
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_persona
    assert_response :success
  end

  test "should update daw_persona" do
    patch :update, id: @daw_persona, daw_persona: { daw_lugar_id: @daw_persona.daw_lugar_id, daw_usuario_id: @daw_persona.daw_usuario_id, pers_cedula: @daw_persona.pers_cedula, pers_email: @daw_persona.pers_email, pers_estadocivil: @daw_persona.pers_estadocivil, pers_fechanac: @daw_persona.pers_fechanac, pers_foto: @daw_persona.pers_foto, pers_primerape: @daw_persona.pers_primerape, pers_primernom: @daw_persona.pers_primernom, pers_segundoape: @daw_persona.pers_segundoape, pers_segundonom: @daw_persona.pers_segundonom, pers_sexo: @daw_persona.pers_sexo, pers_tipopers: @daw_persona.pers_tipopers, pers_tlf1: @daw_persona.pers_tlf1, pers_tlf2: @daw_persona.pers_tlf2 }
    assert_redirected_to daw_persona_path(assigns(:daw_persona))
  end

  test "should destroy daw_persona" do
    assert_difference('DawPersona.count', -1) do
      delete :destroy, id: @daw_persona
    end

    assert_redirected_to daw_personas_path
  end
end
