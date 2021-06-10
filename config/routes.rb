Rails.application.routes.draw do
  resources :feelings, except: [:destroy] do
    collection do
      get :results
    end
      resources :bookings, only: [:new,:create, :edit, :update]

    resources :reviews, only: %i[new create]
  end

  devise_for :users
  root to: 'pages#home'

  resources :bookings, only: [:show]



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
