require 'test_helper'

class MicropstsControllerTest < ActionController::TestCase
  setup do
    @micropst = micropsts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropsts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropst" do
    assert_difference('Micropst.count') do
      post :create, :micropst => @micropst.attributes
    end

    assert_redirected_to micropst_path(assigns(:micropst))
  end

  test "should show micropst" do
    get :show, :id => @micropst.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @micropst.to_param
    assert_response :success
  end

  test "should update micropst" do
    put :update, :id => @micropst.to_param, :micropst => @micropst.attributes
    assert_redirected_to micropst_path(assigns(:micropst))
  end

  test "should destroy micropst" do
    assert_difference('Micropst.count', -1) do
      delete :destroy, :id => @micropst.to_param
    end

    assert_redirected_to micropsts_path
  end
end
