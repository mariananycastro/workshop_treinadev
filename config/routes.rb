Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :challenges, only: %i[index show] do
    resources :solution, only: %i[index show] do
    end
  end
end
