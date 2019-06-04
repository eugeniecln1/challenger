Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :role_models, only: [:index, :show]
  get 'challenges/home', to: 'challenges#home', as: :challenges_home
  get 'challenges/daily-activities', to: 'challenges#daily_activities', as: :challenges_daily_activities
  get 'challenges/future-me', to: 'challenges#future_me', as: :challenges_future_me
  get 'challenges/interactions', to: 'challenges#interactions', as: :challenges_interactions
  get 'challenges/curiosity', to: 'challenges#curiosity', as: :challenges_curiosity
  resources :participations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
