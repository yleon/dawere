require 'test_helper'

class DawRepresentantesControllerTest < ActionController::TestCase
  setup do
    @daw_representante = daw_representantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_representantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_representante" do
    assert_difference('DawRepresentante.count') do
      post :create, daw_representante: { repr_profesion: @daw_representante.repr_profesion, repr_sostenfamiliar: @daw_representante.repr_sostenfamiliar }
    end

    assert_redirected_to daw_representante_path(assigns(:daw_representante))
  end

  test "should show daw_representante" do
    get :show, id: @daw_representante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_representante
    assert_response :success
  end

  test "should update daw_representante" do
    patch :update, id: @daw_representante, daw_representante: { repr_profesion: @daw_representante.repr_profesion, repr_sostenfamiliar: @daw_representante.repr_sostenfamiliar }
    assert_redirected_to daw_representante_path(assigns(:daw_representante))
  end

  test "should destroy daw_representante" do
    assert_difference('DawRepresentante.count', -1) do
      delete :destroy, id: @daw_representante
    end

    assert_redirected_to daw_representantes_path
  end
end
