Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener_web" if Rails.env.development?
  resources :contacts
  devise_for :users
  root to: "tops#index"
  resources :items, only: [:index, :new, :create, :show]
  resources :school_lunches, only: [:index, :new, :create]
end
