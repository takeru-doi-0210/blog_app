Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "/index", to: 'users#index'
    end
  end
end