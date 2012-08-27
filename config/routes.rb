Roadclouding::Application.routes.draw do
  match 'about' => 'home#about'
  match 'download' => 'home#download'
  match 'carrier' => 'home#carrier'
  match 'follow' => 'home#follow'

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  #match 'users/auth/:provider/callback' => 'auth_services#create'
  devise_for :users, :controllers => { :sessions => "sessions", :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_scope :user do
    resources :sessions, :only => [:create, :destroy]
    get '/users/auth/:provider' => 'users/omniauth_callbacks#passthru'
  end
  resources :users, :only => [:show, :index]
  resources :token_authentications, :only => [:create, :destroy]
  
end
