Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :roleModels, only: [:index, :show]
  resources :challenges, only: [:index, :show]
  resources :participations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
