require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboad" do
    get admin_dashboad_url
    assert_response :success
  end

end
