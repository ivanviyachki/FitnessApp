Rails.application.routes.draw do
  resources :training_days
  resources :body_weights
  resources :foods
  resources :food_categories
  resources :exercises
  resources :exercise_categories

  root to: 'body_weights#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
