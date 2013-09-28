IosAcademyWeb::Application.routes.draw do
  devise_for :admins
  resources :episodes

  devise_for :users
  root :to => 'home#index'
end
