Beerlister::Application.routes.draw do
  resources :bars, only: :index
  root to: 'bars#index'
end
