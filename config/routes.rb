Rails.application.routes.draw do
  resources :simulations
  devise_for :managements
  resources :members do
      get :confirm
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root "members#new"

  match '/cardSim', to: 'members#cardSim', via: [:get, :post]

end
