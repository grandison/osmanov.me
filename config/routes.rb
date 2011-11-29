OsmanovMe::Application.routes.draw do
  root :to => "home#index"
  resources :tasks
  resources :comments, :only => [:create]
end
