require 'test_helper'

class OfferControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get offer_create_url
    assert_response :success
  end

  test "should get update" do
    get offer_update_url
    assert_response :success
  end

  test "should get destroy" do
    get offer_destroy_url
    assert_response :success
  end

end
