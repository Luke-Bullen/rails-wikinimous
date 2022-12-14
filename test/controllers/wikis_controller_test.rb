require "test_helper"

class WikisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wikis_index_url
    assert_response :success
  end

  test "should get create" do
    get wikis_create_url
    assert_response :success
  end

  test "should get new" do
    get wikis_new_url
    assert_response :success
  end

  test "should get edit" do
    get wikis_edit_url
    assert_response :success
  end

  test "should get show" do
    get wikis_show_url
    assert_response :success
  end

  test "should get update" do
    get wikis_update_url
    assert_response :success
  end

  test "should get destroy" do
    get wikis_destroy_url
    assert_response :success
  end
end
