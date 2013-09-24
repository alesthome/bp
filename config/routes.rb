Bp::Application.routes.draw do
  root :to => "home#index"
  get 'blog' => "blog#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end