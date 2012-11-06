Spree::Core::Engine.routes.append do
  resources :authors

  namespace :admin do
    resources :authors
  end

end
