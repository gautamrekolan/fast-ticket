FastTicket::Application.routes.draw do

  resources :tickets

  devise_for :users

  devise_scope :user do
    get "/login" => "devise/sessions#new"
    get "/logout" => "devise/sessions#destroy"
  end

  root :to => "tickets#index"

end
