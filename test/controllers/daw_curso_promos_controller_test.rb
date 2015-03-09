require 'test_helper'

class DawCursoPromosControllerTest < ActionController::TestCase
  setup do
    @daw_curso_promo = daw_curso_promos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daw_curso_promos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daw_curso_promo" do
    assert_difference('DawCursoPromo.count') do
      post :create, daw_curso_promo: { daw_promo_id: @daw_curso_promo.daw_promo_id }
    end

    assert_redirected_to daw_curso_promo_path(assigns(:daw_curso_promo))
  end

  test "should show daw_curso_promo" do
    get :show, id: @daw_curso_promo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daw_curso_promo
    assert_response :success
  end

  test "should update daw_curso_promo" do
    patch :update, id: @daw_curso_promo, daw_curso_promo: { daw_promo_id: @daw_curso_promo.daw_promo_id }
    assert_redirected_to daw_curso_promo_path(assigns(:daw_curso_promo))
  end

  test "should destroy daw_curso_promo" do
    assert_difference('DawCursoPromo.count', -1) do
      delete :destroy, id: @daw_curso_promo
    end

    assert_redirected_to daw_curso_promos_path
  end
end
