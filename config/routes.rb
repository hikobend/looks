Rails.application.routes.draw do
  root to: 'top#index'
  resources :ques1, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
