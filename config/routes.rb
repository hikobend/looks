Rails.application.routes.draw do
  get 'top/show'
  root to: 'questions#index'
  resources :questions, except: [:index]
end
