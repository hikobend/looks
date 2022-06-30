Rails.application.routes.draw do
  root to: 'questions#index'
  resources :questions, except: [:index]
end
