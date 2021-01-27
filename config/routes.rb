Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create]

  get '/login' => 'session#new' #login from #sesion is singular > only deals with one session at a time
  post '/login' => 'session#create' #process the login
  delete 'login' => 'session#destroy' #log out

  resources :destinations #, :only => [:new, :create, :update, :destroy]
  resources :comments



end
