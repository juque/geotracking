Rails.application.routes.draw do
  get "geo-trackings", to: "geo_trackings#index"

  get "up" => "rails/health#show", as: :rails_health_check

  root "geo_trackings#index"
end
