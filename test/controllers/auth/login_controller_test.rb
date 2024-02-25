require "test_helper"

class Auth::LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get auth_login_new_url
    assert_response :success
  end
end
