Rails.application.routes.draw do
  resources :pets do
    resources :adoptions
  end
  root 'pets#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
