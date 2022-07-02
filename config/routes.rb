Rails.application.routes.draw do
  root to: 'tops#top'
  resources :tops
  resources :questions
end
