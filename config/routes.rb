Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "property_deals#show_all"
  # post '/post-lead',to: "leads#create"
  get '/property_deals_showall', to: "property_deals#show_all"
  get '/property_deals_show_json/:id', to: "property_deals#show_json"
  # get '/spini_leads', to: "leads#show"
  resources :leads
  resources :property_deals
end
