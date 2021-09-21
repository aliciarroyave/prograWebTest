Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :animals 
  resources :types do
    resources :animals, only: [:index]
  end
  resources :habitats do
    resources :animals, only: [:index]
  end

end
