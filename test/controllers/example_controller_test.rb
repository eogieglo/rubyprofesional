require "test_helper"

class ExampleControllerTest < ActionDispatch::IntegrationTest
  test "should get demo" do
    get example_demo_url
    assert_response :success
  end
end
