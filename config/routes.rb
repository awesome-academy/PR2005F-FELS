Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/about'
  get 'pages/service'
  get 'pages/contact'
  get 'pages/research'
  get 'pages/course'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   devise_for :users,
            path: '',
            path_names: {sign_in: 'login' ,sign_out: 'logout' ,edit: 'profile',sign_up: 'resgistration'},
            controllers: {omniauth_callbacks: 'omniauth_callbacks' }

      as :user do
        get "signin" => "devise/sessions#new"
        post "signin" => "devise/sessions#create"
      devise_scope :user do
        get '/users/sign_out' => 'devise/sessions#destroy'
      end
  end
end
