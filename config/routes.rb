Beerlister::Application.routes.draw do
  resources :bars, only: :index
end
