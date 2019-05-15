Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get 'top'
      # get 'worst'
      # get 'latest'
    end
    member do
      get 'chef'
    end

    resources :reviews, only: [:new, :create]
  end
  namespace :admin do
    resources :restaurants, only: [:index]
  end
  # get 'restaurants/:id/reviews/new', to: 'reviews#new', as: 'new_restaurant_review'

  # get 'restaurants/top', to: 'restaurants#top', as: 'top_restaurants'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
