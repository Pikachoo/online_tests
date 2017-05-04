Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  namespace :admin do
    resources :tests
    resources :questions
    resources :answers
  end

  resources :tests, only: [:show]
  post 'tests/pass', to: 'tests#pass'


end
