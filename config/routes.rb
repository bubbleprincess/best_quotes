Rails.application.routes.draw do
  resources :diffs
  resources :sessions
  resources :r_spec_exceptions
  resources :examples
  resources :test_runs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Special route with no hostname constraints used for automated
  get '/' => 'home#index'
end