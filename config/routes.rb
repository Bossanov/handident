Rails.application.routes.draw do
  devise_for :users

  resources :profiles do

    resources :articles
    resources :donations
    resources :reviews
    resources :askforrdvs
    resources :messages
  end

  root to: 'pages#home'
  get "pages/about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
