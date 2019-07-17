require 'test_helper'

class ListControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get list_show_url
    assert_response :success
  end

  test "should get new" do
    get list_new_url
    assert_response :success
  end

  test "should get create" do
    get list_create_url
    assert_response :success
  end

  test "should get edit" do
    get list_edit_url
    assert_response :success
  end

  test "should get update" do
    get list_update_url
    assert_response :success
  end

  test "should get delete" do
    get list_delete_url
    assert_response :success
  end

end
