require 'test_helper'

class ProvedeorsControllerTest < ActionController::TestCase
  setup do
    @provedeor = provedeors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provedeors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create provedeor" do
    assert_difference('Provedeor.count') do
      post :create, provedeor: { correo: @provedeor.correo, direccion: @provedeor.direccion, nombre: @provedeor.nombre, pais: @provedeor.pais, web: @provedeor.web }
    end

    assert_redirected_to provedeor_path(assigns(:provedeor))
  end

  test "should show provedeor" do
    get :show, id: @provedeor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @provedeor
    assert_response :success
  end

  test "should update provedeor" do
    patch :update, id: @provedeor, provedeor: { correo: @provedeor.correo, direccion: @provedeor.direccion, nombre: @provedeor.nombre, pais: @provedeor.pais, web: @provedeor.web }
    assert_redirected_to provedeor_path(assigns(:provedeor))
  end

  test "should destroy provedeor" do
    assert_difference('Provedeor.count', -1) do
      delete :destroy, id: @provedeor
    end

    assert_redirected_to provedeors_path
  end
end
