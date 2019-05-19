Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'posts#index', as: 'home'

  # Example of regular root
  get 'about' => 'pages#about', as: 'about'

  # Example resources route (maps HTTP verbs to controller actions)
  resources :posts do
    resources :comments
  end

end
