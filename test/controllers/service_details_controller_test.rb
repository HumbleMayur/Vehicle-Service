require "test_helper"

class ServiceDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get service_details_index_url
    assert_response :success
  end

  test "should get show" do
    get service_details_show_url
    assert_response :success
  end
end
