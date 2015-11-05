Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'splash#splashpage'

  # Routes for the categories
  get 'fashion' => 'fashion#index'
  get 'home' => 'home#index'
  get 'garden' => 'garden#index'
  get 'electronics' => 'electronics#index'
  get 'entertainment' => 'entertainment#index'
  get 'leisure' => 'leisure#index'
  get 'collectables' => 'collectables#index'
  get 'jewellery' => 'jewellery#index'
  get 'motors' => 'motors#index'
  get 'literature' => 'literature#index'

  # Route for categories index
  get 'categories' => 'categories#index'

  # All routes for the items
  resources :items do
    member do
      get 'request_trade', to: "trades#request_trade"
      get 'response_trade', to: "trades#response_trade"
    end
  end

  # Route for the trade system
  get 'trades/:id/response_page' => 'trades#response_page', as: :response_page
  get 'trades/:id/finalize_page' => 'trades#finalize_page', as: :finalize_page
  get 'trades/:id/accepted_page' => 'trades#accepted_page', as: :accepted_page
  get 'trades/:id/reject_trade' => 'trades#reject_trade', as: :reject_trade
  get 'trades/:id/accept_trade' => 'trades#accept_trade', as: :accept_trade

  # All devise routes
  devise_for :users

  # Routes for user index and show
  resources :users, only: [:index, :show]

end
