Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
 root "articles#index"
 resources :articles do
  resources :comments
 end
#  delete "/articles/:id", to: "articles#destroy"
#  patch "/articles/:id", to: "articles#update"
#  get "/articles/:id/edit", to: "articles#edit"
#  post "/artilces", to:"articles#create"
#  get "/articles/new", to:"articles#new"
#  get "/articles", to: "articles#index"
#  get "/articles/:id", to: "articles#show", as: :article


  # Defines the root path route ("/")
  # root "posts#index"
end
