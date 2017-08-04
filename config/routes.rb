Rails.application.routes.draw do
  devise_for :users
  
  root to: 'statics#home'
  
  get '/terms_and_conditions', to: 'statics#terms_and_conditions'
  get '/privacy_policy', to: 'statics#privacy_policy'
  get '/criteria_table_info', to: 'statics#criteria_table_info'
  get '/admin', to: 'admin#admin'
  post '/home_switch', to: 'statics#home_switch'
  post '/change_state', to: 'power_providers#change_state'
  
  resources :faqs, only: [:index]
  resources :messages, only: [:new, :create]
  resources :partners, only: [:new, :show]
  resources :charities, only: [:show]
  resources :power_providers, only: [:index]
  
  resources :switches, only: [:new, :create] do
    get 'ethical_power', on: :collection
    get 'ethical_super', on: :collection
    get 'ethical_homeloans', on: :collection
    get 'homeloans_sent', on: :collection
  end
end


