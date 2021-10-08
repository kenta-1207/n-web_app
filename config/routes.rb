Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener_web" if Rails.env.development?
  devise_for :users
  root to: "tops#index"
  resources :items
  resources :school_lunches, only: [:index, :new, :create]
  resources :contacts
  resources :stock_items, only: [:index, :new, :create, :update, :edit, :destroy]
  get 'stock_items/search'
end
