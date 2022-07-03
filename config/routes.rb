# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'tops#top'
  resources :tops
end
