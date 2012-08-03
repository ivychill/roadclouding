Roadclouding::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  match 'users/auth/:provider/callback' => 'auth_services#create'
  devise_for :users, :controllers => { :sessions => "sessions" }
  devise_scope :user do
    resources :sessions, :only => [:create, :destroy]
  end
  resources :users, :only => [:show, :index]
  resources :token_authentications, :only => [:create, :destroy]
  
  resources :auth_services, :only => [:index, :create]
end
