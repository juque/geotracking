Rails.application.routes.draw do

  get "geo-trackings", to: "geo_trackings#index"
  post "geo-trackings", to: "geo_trackings#create"

  get "up" => "rails/health#show", as: :rails_health_check

  root "geo_trackings#index"
end
