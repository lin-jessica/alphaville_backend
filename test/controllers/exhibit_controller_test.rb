require 'test_helper'

class ExhibitControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exhibit_index_url
    assert_response :success
  end

  test "should get show" do
    get exhibit_show_url
    assert_response :success
  end

end
