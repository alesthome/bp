Bp::Application.routes.draw do
  get "brworkforce" => "brworkforce#index"
  root :to => "home#index"
  get 'blog' => "blog#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end