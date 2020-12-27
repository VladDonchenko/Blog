Rails.application.routes.draw do
get 'signup', to: 'autors#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'

resources :autors
resources :sessions
  get 'sessions/new'
  resources :posts do
    resources :comments do
      member do
        post :publish
      end
    end
  end


 
  root  'posts#index'
end
