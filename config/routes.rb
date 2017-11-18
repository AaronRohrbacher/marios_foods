Rails.application.routes.draw do
  root :to => 'landing#index'
  resources :landing
  resources :products do
    resources :reviews, :except => [:show, :index]
  end
end
