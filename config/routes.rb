Rails.application.routes.draw do

  resources :dog_foods do
    get :dogs, on: :member
  end

  resources :dogs do
    get :dog_foods, on: :member
  end

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
