Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    unauthenticated :user do
      root "devise/sessions#new"
    end
    authenticated :user do
      root to: "projects#index", as: :home
    end
  end

  resources :comments
  resources :issues
  resources :projects
end
