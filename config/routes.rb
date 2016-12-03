Rails.application.routes.draw do

  get 'jobs/index'

  devise_for :users
  resources :articles do
      collection do
          get 'search'
      end
    resources :comments, except: [:index]
  end

  resources :topics, only: [:show, :index] do
      collection do
          get 'last'
          get 'no_reply'
          get 'popular'
      end
  end
  resources :sites, only: [:index]
  resources :jobs, only: [:index]
  resources :notes

  root 'articles#index'

end
