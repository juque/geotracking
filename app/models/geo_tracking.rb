class GeoTracking < ApplicationRecord
  validates :lat, :long, :time, presence: true
  validates :lat, :long, numericality: {only_float: true}
end
