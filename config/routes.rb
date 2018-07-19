Rails.application.routes.draw do
  devise_for :users
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope "/:locale" do
    resources :books
  end
end
