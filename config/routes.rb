Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords",
    :omniauth_callbacks => "users/omniauth_callbacks"
  }
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope "/:locale" do
    resources :books
  end
end
