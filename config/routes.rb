Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user

  scope :users, module: :user do
	 resources :login, only: [:index]
	end
end
