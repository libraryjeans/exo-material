require 'test_helper'

class MillsControllerTest < ActionController::TestCase
  setup do
    @mill = mills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mill" do
    assert_difference('Mill.count') do
      post :create, mill: { address: @mill.address, city: @mill.city, country: @mill.country, fax: @mill.fax, name: @mill.name, postal_code: @mill.postal_code, telephone: @mill.telephone }
    end

    assert_redirected_to mill_path(assigns(:mill))
  end

  test "should show mill" do
    get :show, id: @mill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mill
    assert_response :success
  end

  test "should update mill" do
    put :update, id: @mill, mill: { address: @mill.address, city: @mill.city, country: @mill.country, fax: @mill.fax, name: @mill.name, postal_code: @mill.postal_code, telephone: @mill.telephone }
    assert_redirected_to mill_path(assigns(:mill))
  end

  test "should destroy mill" do
    assert_difference('Mill.count', -1) do
      delete :destroy, id: @mill
    end

    assert_redirected_to mills_path
  end
end
