Rails.application.routes.draw do

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
          get 'favorites'
      end
  end
  resources :wiki, only: [:index] do
      collection do
          get 'recent',
               'tools',
               'books',
               'rvm-guide',
               'rben-guide',
               'coding-style',
               'rails-style-guide',
               'gems',
               'rails-hosting',
               'deploy-rails-on-ubuntu-server',
               'mac-nginx-passenger-rails'

      end
  end
  resources :sites, only: [:index]
  resources :jobs, only: [:index]
  resources :notes

  root 'articles#index'

end
