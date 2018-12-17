Rails.application.routes.draw do
  get 'welcome/index'

  resources :people do
    resources :presents
  end

  resources :categories

  resources :presents do
    resources :categories
    resources :comments
  end

  # resources :genders
  # resources :holidays
  # resources :wishes

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
