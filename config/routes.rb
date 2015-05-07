Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create]

  get   '/'                  => 'pages#index',      :as => 'root'
  get   '/api'               => 'pages#api',        :as => 'api_stub'
  get   '/about'             => 'pages#about',      :as => 'about'
  get   '/contact'           => 'pages#contact',    :as => 'contact'
  get   '/login'             => 'session#new',      :as => 'login'
  post  '/login'             => 'session#create'
  get   '/logout'            => 'session#destroy'
  get   '/signup'            => 'users#new',        :as => 'signup'
  get   '/profile'           => 'users#show',       :as => 'user_profile'
  get   '/categories'        => 'categories#index', :as => 'categories'
  get   '/:category'         => 'categories#show',  :as => 'single_category'
  get   '/goals/:goal_title' => 'goals#show',       :as => 'single_goal'
  patch '/goals/:goal_title' => 'goals#update'
end
