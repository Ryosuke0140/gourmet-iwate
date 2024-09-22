Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'homes/about' => 'homes#about', as: 'about'
  patch 'posts/:id' => 'posts#update', as: 'update_post'
  patch 'users/:id' => 'users#update', as: 'update_user'

resources :posts, only: [:new, :create, :index, :show, :edit, :destroy] do
  resource :favorite, only: [:create, :destroy]
end
resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
