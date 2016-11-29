Rails.application.routes.draw do

  devise_for :users
  resources :articles do
    resources :comments
  end

  resources :topics

  root 'articles#index'

end
