Rails.application.routes.draw do
 
  root 'static_page#landing_page'
  get 'privacy_policy', to:'static_page#privacy_policy'
  # get 'static_page/landing_page'
  # get 'static_page/privacy_policy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
