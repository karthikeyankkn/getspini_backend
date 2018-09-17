Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/post-lead',to: "leads#create"
  get '/property_deals_showall', to: "property_deals#show_all"
  resources :property_deals
end
