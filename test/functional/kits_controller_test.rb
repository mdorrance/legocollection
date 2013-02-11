require 'test_helper'

class KitsControllerTest < ActionController::TestCase
  setup do
    @kit = kits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kit" do
    assert_difference('Kit.count') do
      post :create, kit: { date: @kit.date, name: @kit.name, photo_url: @kit.photo_url, set_num: @kit.set_num, theme_id: @kit.theme_id, user_id: @kit.user_id, value: @kit.value }
    end

    assert_redirected_to kit_path(assigns(:kit))
  end

  test "should show kit" do
    get :show, id: @kit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kit
    assert_response :success
  end

  test "should update kit" do
    put :update, id: @kit, kit: { date: @kit.date, name: @kit.name, photo_url: @kit.photo_url, set_num: @kit.set_num, theme_id: @kit.theme_id, user_id: @kit.user_id, value: @kit.value }
    assert_redirected_to kit_path(assigns(:kit))
  end

  test "should destroy kit" do
    assert_difference('Kit.count', -1) do
      delete :destroy, id: @kit
    end

    assert_redirected_to kits_path
  end
end
