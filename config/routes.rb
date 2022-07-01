Rails.application.routes.draw do
  get 'tops/show'
  root to: 'tops#show'
  resources :questions, except: [:index]
end
