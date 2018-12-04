require 'test_helper'

class LogginsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get loggins_new_url
    assert_response :success
  end

end
