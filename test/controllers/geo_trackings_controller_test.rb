require "test_helper"

class GeoTrackingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get geo_trackings_url
    assert_response :success
  end
end
