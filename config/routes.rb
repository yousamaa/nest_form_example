# frozen_string_literal: true

Rails.application.routes.draw do
  resources :surveys
  root to: 'surveys#index'
end
