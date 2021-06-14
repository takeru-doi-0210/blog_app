Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "/hello", to: 'posts#index'
    end
  end
end