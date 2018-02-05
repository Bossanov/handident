Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  devise_for :users

  resources :profiles do
    resources :articles
    resources :donations
    resources :reviews
    resources :meetings
    resources :messages
  end

  root to: 'pages#home'
  get 'citywithdept', to: 'profiles#citywithdept'
  get 'dentistwithcity', to: 'profiles#dentistwithcity'
  get 'getSearch', to: 'profiles#getSearch'
  get 'pages/about'
  get 'pages/formation'
  get 'pages/test'
  get 'pages/partnerships'
  get 'pages/soins'
  get 'pages/all_articles_categories'
  get 'pages/make_a_donation'
  get 'pages/support_us'

  match '/contacts',     to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
