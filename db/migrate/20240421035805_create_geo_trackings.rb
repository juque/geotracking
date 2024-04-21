class CreateGeoTrackings < ActiveRecord::Migration[7.1]
  def change
    create_table :geo_trackings do |t|
      t.float :lat
      t.float :long
      t.datetime :time

      t.timestamps
    end
  end
end
