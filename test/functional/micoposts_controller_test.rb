require 'test_helper'

class MicopostsControllerTest < ActionController::TestCase
  setup do
    @micopost = micoposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micoposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micopost" do
    assert_difference('Micopost.count') do
      post :create, micopost: { content: @micopost.content, user_id: @micopost.user_id }
    end

    assert_redirected_to micopost_path(assigns(:micopost))
  end

  test "should show micopost" do
    get :show, id: @micopost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micopost
    assert_response :success
  end

  test "should update micopost" do
    put :update, id: @micopost, micopost: { content: @micopost.content, user_id: @micopost.user_id }
    assert_redirected_to micopost_path(assigns(:micopost))
  end

  test "should destroy micopost" do
    assert_difference('Micopost.count', -1) do
      delete :destroy, id: @micopost
    end

    assert_redirected_to micoposts_path
  end
end
