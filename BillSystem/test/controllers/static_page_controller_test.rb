require 'test_helper'

class StaticPageControllerTest < ActionDispatch::IntegrationTest
  test "should get Login" do
    get static_page_Login_url
    assert_response :success
  end

end
