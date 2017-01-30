Rails.application.routes.draw do
  resources :home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Special route with no hostname constraints used for automated
  get '/' => 'home#index'
end