Rails.application.routes.draw do
 resources :post_images, only:[:new, :create, :index, :destroy, :show]
  devise_for :users
  root to: "homes#top"
  get "homes/about" => "homes#about", as: "about"
end
