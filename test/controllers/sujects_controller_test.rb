require "test_helper"

class SujectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sujects_index_url
    assert_response :success
  end

  test "should get show" do
    get sujects_show_url
    assert_response :success
  end

  test "should get new" do
    get sujects_new_url
    assert_response :success
  end

  test "should get edit" do
    get sujects_edit_url
    assert_response :success
  end

  test "should get delete" do
    get sujects_delete_url
    assert_response :success
  end
end
