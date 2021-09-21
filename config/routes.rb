Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :animals do
    resources :types, only: [:index]
  end
  resources :types
  resources :habitats

end
