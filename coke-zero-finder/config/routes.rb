Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "coke_zero#index"
  resources :coke_zero, only: [:index, :show]
  post '/coke_zero_location' => "coke_zero#create", :as => :create_coke

end
