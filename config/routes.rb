Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/' => 'sessions#show'
  get '/show'=> 'secrets#show'
end
