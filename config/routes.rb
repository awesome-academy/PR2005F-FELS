Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/about'
  get 'pages/service'
  get 'pages/contact'
  get 'pages/research'
  get 'pages/course'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
