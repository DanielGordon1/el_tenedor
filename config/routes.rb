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
  end

  # get 'restaurants/top', to: 'restaurants#top', as: 'top_restaurants'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
