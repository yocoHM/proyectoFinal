require 'test_helper'

class PedidoLocsControllerTest < ActionController::TestCase
  setup do
    @pedido_loc = pedido_locs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedido_locs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedido_loc" do
    assert_difference('PedidoLoc.count') do
      post :create, pedido_loc: { obra_id: @pedido_loc.obra_id, pedido_id: @pedido_loc.pedido_id }
    end

    assert_redirected_to pedido_loc_path(assigns(:pedido_loc))
  end

  test "should show pedido_loc" do
    get :show, id: @pedido_loc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedido_loc
    assert_response :success
  end

  test "should update pedido_loc" do
    patch :update, id: @pedido_loc, pedido_loc: { obra_id: @pedido_loc.obra_id, pedido_id: @pedido_loc.pedido_id }
    assert_redirected_to pedido_loc_path(assigns(:pedido_loc))
  end

  test "should destroy pedido_loc" do
    assert_difference('PedidoLoc.count', -1) do
      delete :destroy, id: @pedido_loc
    end

    assert_redirected_to pedido_locs_path
  end
end
