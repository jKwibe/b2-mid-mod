Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/mechanics', to: 'mechanics#index'
  get '/mechanics/:mechanic_id', to: 'mechanics#show'
  post '/mechanics/:mechanic_id/rides', to: 'mechanic_projects#create'
  get 'parks/:park_id', to: 'parks#show'

end
