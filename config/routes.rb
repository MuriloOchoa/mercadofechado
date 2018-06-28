Rails.application.routes.draw do
  devise_for :users
  #devise_for :users
  resources :categories

  root to: "products#homepage"

  resources :products do
    collection do
      get 'homepage'
      post 'homepage'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
