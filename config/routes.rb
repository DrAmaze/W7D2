Rails.application.routes.draw do

  namespace :api do
    resources :todo, only: [:index, :show, :create, :destroy, :update],
    defaults: {format: :json}
  end

  root to: 'static_pages#root'
end
