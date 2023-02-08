require "test_helper"

class FriendsControllerTest < ActionDispatch::IntegrationTest
  test "should get request" do
    get friends_request_url
    assert_response :success
  end

  test "should get confirm" do
    get friends_confirm_url
    assert_response :success
  end

  test "should get delete" do
    get friends_delete_url
    assert_response :success
  end
end
