Inspector::Application.routes.draw do
  resources :businesses, only: [:index, :show]
end
