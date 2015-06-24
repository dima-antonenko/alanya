require 'test_helper'

class DynamicProjectPagesControllerTest < ActionController::TestCase
  setup do
    @dynamic_project_page = dynamic_project_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dynamic_project_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dynamic_project_page" do
    assert_difference('DynamicProjectPage.count') do
      post :create, dynamic_project_page: {  }
    end

    assert_redirected_to dynamic_project_page_path(assigns(:dynamic_project_page))
  end

  test "should show dynamic_project_page" do
    get :show, id: @dynamic_project_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dynamic_project_page
    assert_response :success
  end

  test "should update dynamic_project_page" do
    patch :update, id: @dynamic_project_page, dynamic_project_page: {  }
    assert_redirected_to dynamic_project_page_path(assigns(:dynamic_project_page))
  end

  test "should destroy dynamic_project_page" do
    assert_difference('DynamicProjectPage.count', -1) do
      delete :destroy, id: @dynamic_project_page
    end

    assert_redirected_to dynamic_project_pages_path
  end
end
