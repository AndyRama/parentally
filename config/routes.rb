Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "/privacy" => "pages#privacy", as: :privacy
  get "/test" => "pages#test", as: :test
end
