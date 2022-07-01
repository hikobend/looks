Rails.application.routes.draw do
  root to: 'tops#new'
  resources :questions
end
