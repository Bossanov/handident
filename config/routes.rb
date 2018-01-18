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

  get 'pages/about'
  get 'pages/formation'
  get 'pages/test'
  get 'pages/partnerships'
  get 'pages/all_articles_categories'

  match '/contacts',     to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
