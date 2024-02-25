require "test_helper"

class Auth::RegisterControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get auth_register_new_url
    assert_response :success
  end

  test "should get store" do
    get auth_register_store_url
    assert_response :success
  end
end
