Rails.application.routes.draw do

  devise_for :users
  devise_for :admins, skip: [:registrations], controllers: {sessions: 'admins/sessions'}

  namespace :admin do
    root to: "home#index"
    resources :admins
  end

  root to: "user/timeline#index"

  namespace :user do
    # root to: "home#index"
    # resources :users
  end
end

