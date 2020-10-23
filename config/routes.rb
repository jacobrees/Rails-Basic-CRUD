Rails.application.routes.draw do
  root 'posts#index'
  resources :posts do
    resources :comments
  end
  get 'about' => 'pages#about', as: 'about'
end
