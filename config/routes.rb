Rails.application.routes.draw do
  root :to => 'genres#index'

  resources :genres do
    resources :artists
  end

  resources :artists do
    resources :albums
  end
end
