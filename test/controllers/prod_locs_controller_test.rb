require 'test_helper'

class ProdLocsControllerTest < ActionController::TestCase
  setup do
    @prod_loc = prod_locs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prod_locs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prod_loc" do
    assert_difference('ProdLoc.count') do
      post :create, prod_loc: { m2: @prod_loc.m2 }
    end

    assert_redirected_to prod_loc_path(assigns(:prod_loc))
  end

  test "should show prod_loc" do
    get :show, id: @prod_loc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prod_loc
    assert_response :success
  end

  test "should update prod_loc" do
    patch :update, id: @prod_loc, prod_loc: { m2: @prod_loc.m2 }
    assert_redirected_to prod_loc_path(assigns(:prod_loc))
  end

  test "should destroy prod_loc" do
    assert_difference('ProdLoc.count', -1) do
      delete :destroy, id: @prod_loc
    end

    assert_redirected_to prod_locs_path
  end
end
