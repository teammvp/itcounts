Rails.application.routes.draw do

  get   '/'                  => 'pages#index',      :as => 'root'
  get   '/api'               => 'pages#api',        :as => 'api_stub'
  get   '/about'             => 'pages#about',      :as => 'about'
  get   '/login'             => 'session#new',     :as => 'login'
  post  '/login'             => 'session#create'
  get   '/logout'            => 'session#destroy'
  get   '/categories'        => 'categories#index', :as => 'categories'
  get   '/:category'         => 'categories#show',  :as => 'single_category'
  get   '/goals/:goal_title' => 'goals#show',       :as => 'single_goal'
  patch '/goals/:goal_title' => 'goals#update'
end
