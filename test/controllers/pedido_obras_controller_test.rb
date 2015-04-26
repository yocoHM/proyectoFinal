require 'test_helper'

class PedidoObrasControllerTest < ActionController::TestCase
  setup do
    @pedido_obra = pedido_obras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedido_obras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedido_obra" do
    assert_difference('PedidoObra.count') do
      post :create, pedido_obra: {  }
    end

    assert_redirected_to pedido_obra_path(assigns(:pedido_obra))
  end

  test "should show pedido_obra" do
    get :show, id: @pedido_obra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedido_obra
    assert_response :success
  end

  test "should update pedido_obra" do
    patch :update, id: @pedido_obra, pedido_obra: {  }
    assert_redirected_to pedido_obra_path(assigns(:pedido_obra))
  end

  test "should destroy pedido_obra" do
    assert_difference('PedidoObra.count', -1) do
      delete :destroy, id: @pedido_obra
    end

    assert_redirected_to pedido_obras_path
  end
end
