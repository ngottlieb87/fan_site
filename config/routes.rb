Rails.application.routes.draw do
  root :to => 'genres#index'

  resources :genres do
    resources :artists
  end

  resources :artists do
    resources :albums
  end

  devise_for :users
  resources :albums do
    member do
      put "like", to: "albums#upvote"
      put "dislike", to: "albums#downvote"
    end
  end

end
