Rails.application.routes.draw do
  #CREATE
  get '/new_idea' => 'application#new'
  get '/create_idea' => 'application#create'
  #READ
  get '/ideas/:id' => 'application#show'
  get '/ideas' =>  'application#index'
  #UPDATE
  get '/ideas/:id/edit' => 'application#edit'
  get '/update_idea/:id' => 'application#update'
  #DESTROY
  get '/ideas/:id/destroy' => 'application#destroy'
end
