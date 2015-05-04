Rails.application.routes.draw do

  get '/'                   => 'pages#index',            :as => 'root'
  get '/api'                => 'pages#api',              :as => 'api_stub'
  get '/about'              => 'pages#about',            :as => 'about'
  get '/categories'         => 'categories#index',       :as => 'categories'
  get '/category/:category' => 'categories#show',        :as => 'single_category'
  get '/category/:category/:goal_title' => 'goals#show', :as => 'single_goal'

end
