Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "property_deals#show_all"
  # post '/post-lead',to: "leads#create"
  get '/property_deals_showall', to: "property_deals#show_all"
  # get '/spini_leads', to: "leads#show"
  resources :leads
  resources :property_deals
end
