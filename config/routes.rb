Rails.application.routes.draw do

  root 'static_pages#root'


  defaults format: :json do
    resources :swaps, only: [:index, :create, :show, :update]
    resources :shifts, only: [:index, :create, :show]
    resources :months, only: [:index, :show]
    resources :users, only: [:index, :show]
  end

end
