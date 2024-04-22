class GeoTrackingsController < ApplicationController

  def index
    @geo_tracking = GeoTracking.new
  end

  def create

    @geo_tracking = GeoTracking.new(geo_tracking_params)

    respond_to do |format|
      if @geo_tracking.save
        format.html {redirect_to geo_trackings_url, notice: "Todo OK"}
      else
        format.html { render :index, status: :unprocessable_entity }
      end
    end

  end

  private

  def geo_tracking_params
    params.require(:geo_tracking).permit(:lat, :long).merge(time: Time.now)
  end

end
