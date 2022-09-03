Rails.application.routes.draw do
 
  devise_for :users
  resources :courses
  resources :users, only: [:index]

  root 'home#index'
  get 'home/activity'
  get 'home/index'


  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  # get 'static_page/landing_page'
  # get 'static_page/privacy_policy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
