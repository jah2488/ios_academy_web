IosAcademyWeb::Application.routes.draw do
  resources :episodes

  devise_for :users
  root :to => 'home#index'
end
