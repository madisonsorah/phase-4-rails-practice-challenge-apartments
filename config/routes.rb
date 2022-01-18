Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/apartments', to: 'apartments#index'
  post '/apartments', to: 'apartments#create'
  get '/apartments/:id', to: 'apartments#show'
  patch '/apartments/:id', to: 'apartments#update'
  delete '/apartments/:id', to: 'apartments#destroy'

  get '/tenants', to: 'tenants#index'
  post '/tenants', to: 'tenants#create'
  get '/tenants/:id', to: 'tenants#show'
  patch '/tenants/:id', to: 'tenants#update'
  delete '/tenants/:id', to: 'tenants#destroy'

  post '/leases', to: 'leases#create'
  delete '/leases/:id', to: 'leases#destroy'
  
  resource :apartments
  resource :tenants
  resource :leases, only: [:create, :delete]
end
