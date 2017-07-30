Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'statics#home'
  
  get '/terms_and_conditions', to: 'statics#terms_and_conditions'
  get '/privacy_policy', to: 'statics#privacy_policy'
  
  resources :faqs, only: [:index]
  resources :messages, only: [:new, :create]
  resources :partners, only: [:show]
  
  resources :switches, only: [:new, :create] do
    get 'ethical_power', on: :collection
    get 'ethical_super', on: :collection
    get 'ethical_homeloans', on: :collection
  end
end


