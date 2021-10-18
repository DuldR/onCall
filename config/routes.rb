Rails.application.routes.draw do

  # root to 'static_pages#root'


  defaults format: :json do
    resources :swaps, only: [:index, :create, :show]
    resources :shifts, only: [:index, :create, :show]
    resources :months, only: [:index, :show]
    resources :users, only: [:index, :show]
  end

end
