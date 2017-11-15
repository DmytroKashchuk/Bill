require 'test_helper'

class BillsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bills_new_url
    assert_response :success
  end

end
