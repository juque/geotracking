require "test_helper"

class GeoTrackingTest < ActiveSupport::TestCase

  test "should validate presence of lat long and time" do
    geo_tracking = GeoTracking.new
    assert_not geo_tracking.valid?
  end

  test "should save valid geo tracking"  do
    geo_tracking = GeoTracking.new(lat: 10.5, long: -78.2, time: Time.now)
    assert geo_tracking.valid?
    geo_tracking.save!
    assert geo_tracking.persisted?
  end

end
