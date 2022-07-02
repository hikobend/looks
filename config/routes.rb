# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'tops#top'
  resources :tops
  resources :questions
  get 'tops/:id/answer', to: 'tops#answer'
end
