Rails.application.routes.draw do

  devise_for :users
  resources :articles do
    resources :comments, except: [:index]
  end

  resources :topics, only: [:show, :index]
  resources :sites, only: [:index]

  root 'articles#index'

end
