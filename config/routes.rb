Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
end

# chatgpt version below

# Rails.application.routes.draw do
#   resources :restaurants, only: [:index, :new, :create, :show] do
#     resources :reviews, only: [:new, :create]
#   end
# end
