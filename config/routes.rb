Rails.application.routes.draw do

  root 'events#index'
  get '/events' => 'events#index'
  post '/events' => 'events#create'
end
