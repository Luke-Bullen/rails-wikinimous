require "test_helper"

class WikiControllerTest < ActionDispatch::IntegrationTest
  test "should get resources" do
    get wiki_resources_url
    assert_response :success
  end
end
