Rails.application.routes.draw do
  resources :tasks do
    member do
      put :change
    end
  end
  devise_for :users

  get 'pages/home'

  root 'pages#home'

  get 'about' => 'pages#about'
  get 'test' => 'pages#test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
