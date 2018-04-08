Rails.application.routes.draw do
  devise_for :users
  resources :treatments

  authenticated :user do
    root "treatments#index", as: "authenticated_root"
  end

  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
