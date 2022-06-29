require "test_helper"

class Ques1ControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get ques1_show_url
    assert_response :success
  end
end
