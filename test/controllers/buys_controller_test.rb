require "test_helper"

class BuysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get buys_index_url
    assert_response :success
  end
end
