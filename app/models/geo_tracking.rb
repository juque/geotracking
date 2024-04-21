class GeoTracking < ApplicationRecord
  validates :lat, :long, :time, presence: true
end
