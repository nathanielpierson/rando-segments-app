Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "/levels" => "levels#index"
  get "/levels/:id" => "levels#show"
  patch "/levels/:id" => "levels#update"

  # get "fastest_time/:id" => "levels#fastest_time"

  get "/runs" => "runs#index"
  get "/runs/:id" => "runs#show"
  put "/runs" => "runs#create"
  patch "/runs/:id" => "runs#update"
end
