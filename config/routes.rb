Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'statics#home'
  
  get '/ethical_power', to: 'statics#ethical_power'
  get '/ethical_super', to: 'statics#ethical_super'
  get '/ethical_homeloans', to: 'statics#ethical_homeloans'
  get '/terms_and_conditions', to: 'statics#terms_and_conditions'
  get '/privacy_policy', to: 'statics#privacy_policy'
  
  resources :faqs, only: [:index]
  resources :messages, only: [:new, :create]
end


