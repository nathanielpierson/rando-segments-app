Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "/levels" => "levels#index"
  get "/levels/:id" => "levels#show"

  get "/runs" => "runs#index"
  get "/runs/:id" => "runs#show"
  put "/runs" => "runs#create"
  patch "/runs/:id" => "runs#update"
end
