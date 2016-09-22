Rails.application.routes.draw do
  resources :simulations
  devise_for :managements
  resources :members do
  	collection do
      match 'search' => 'members#search', via: [:get, :post], as: :search
    end
    match 'confirm' => 'members#confirm', via: [:get, :post]

  end
  
  root "members#new"
end
