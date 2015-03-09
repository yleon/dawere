require 'test_helper'

class DawMatriculaPromosControllerTest < ActionController::TestCase
  setup do
    @daw_matricula_promo = daw_matricula_promos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_matricula_promos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_matricula_promo" do
    assert_difference('DawMatriculaPromo.count') do
      post :create, daw_matricula_promo: { daw_promo_id: @daw_matricula_promo.daw_promo_id }
    end

    assert_redirected_to daw_matricula_promo_path(assigns(:daw_matricula_promo))
  end

  test "should show daw_matricula_promo" do
    get :show, id: @daw_matricula_promo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_matricula_promo
    assert_response :success
  end

  test "should update daw_matricula_promo" do
    patch :update, id: @daw_matricula_promo, daw_matricula_promo: { daw_promo_id: @daw_matricula_promo.daw_promo_id }
    assert_redirected_to daw_matricula_promo_path(assigns(:daw_matricula_promo))
  end

  test "should destroy daw_matricula_promo" do
    assert_difference('DawMatriculaPromo.count', -1) do
      delete :destroy, id: @daw_matricula_promo
    end

    assert_redirected_to daw_matricula_promos_path
  end
end
