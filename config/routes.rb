Rails.application.routes.draw do

  get 'jobs/index'

  devise_for :users
  resources :articles do
    resources :comments, except: [:index]
  end

  resources :topics, only: [:show, :index]
  resources :sites, only: [:index]
  resources :jobs, only: [:index]

  root 'articles#index'

end
