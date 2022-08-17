require "test_helper"

class LogindataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get logindata_index_url
    assert_response :success
  end

  test "should get show" do
    get logindata_show_url
    assert_response :success
  end

  test "should get new" do
    get logindata_new_url
    assert_response :success
  end

  test "should get edit" do
    get logindata_edit_url
    assert_response :success
  end
end
