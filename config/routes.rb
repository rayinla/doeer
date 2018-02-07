Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :users do
	  resources :posts
  end
  get  '/users/:id/reviews' => 'users#reviews'
  get  '/users/:id/jobs' => 'users#jobs'
  get  '/users/:id/listings' => 'users#listings'
 
end
