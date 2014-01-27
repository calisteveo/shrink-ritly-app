ShrinkApp::Application.routes.draw do
  
  # Site Controller

  root to: 'site#index'

  # Link Controller

  get '/links', to: 'links#index', as: :links

  get '/links/new', to: 'links#new', as: :new_link

  get '/links/:id', to: 'links#show', as: :link

  get '/links/:id/edit', to: 'links#edit', as: :edit_link

  post '/links', to: 'links#create'

  patch '/links/:id', to: 'links#update'

  #delete '/links/:id' to: 'links#destroy'

end
