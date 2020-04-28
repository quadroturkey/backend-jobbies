require 'test_helper'

class TrackerControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get tracker_create_url
    assert_response :success
  end

  test "should get update" do
    get tracker_update_url
    assert_response :success
  end

  test "should get destroy" do
    get tracker_destroy_url
    assert_response :success
  end

end
