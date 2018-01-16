Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  devise_for :users

  resources :profiles do

    resources :articles
    resources :donations
    resources :reviews
    resources :askforrdvs
    resources :messages
  end

  root to: 'pages#home'

  get 'pages/about'
  get 'pages/formation'
  get 'pages/test'
  get 'pages/all_articles_categories'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
