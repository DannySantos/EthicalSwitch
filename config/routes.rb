Rails.application.routes.draw do
  devise_for :users
  
  root to: 'statics#home'
  
  get '/terms_and_conditions', to: 'statics#terms_and_conditions'
  get '/privacy_policy', to: 'statics#privacy_policy'
  get '/criteria_table_info', to: 'statics#criteria_table_info'
  get '/admin', to: 'admin#admin'
  get '/admin/messages', to: 'admin#messages'
  get '/admin/switchers', to: 'admin#switchers'
  get '/admin/subscribers', to: 'admin#subscribers'
  get '/admin/faqs', to: 'admin#faqs'
  get '/admin/new_faq', to: 'admin#new_faq'
  post '/home_switch', to: 'statics#home_switch'
  post '/change_state', to: 'power_providers#change_state'
  
  resources :faqs, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :faq_tags, only: [:create, :destroy]
  resources :messages, only: [:new, :create]
  resources :partners, only: [:new, :show]
  resources :charities, only: [:show]
  resources :power_providers, only: [:index]
  resources :subscribers, only: [:create]
  
  resources :switches, only: [:new, :create, :update] do
    get 'ethical_power', on: :collection
    get 'ethical_super', on: :collection
    get 'ethical_homeloans', on: :collection
    get 'homeloans_sent', on: :collection
  end
  
  # Legacy routes
  
  #  Charity.all.each do |charity|
  #    get "#{charity.filename.gsub("_", "")}", to: redirect("/charities/#{charity.id}")
  #  end
  #  
  #  get "greenpledge", to: redirect("/charities/#{Charity.find_by(name: "The Green Pledge").id}")
  #  get "habitat", to: redirect("/charities/#{Charity.find_by(name: "Habitat for Humanity Australia").id}")
  #  get "ms", to: redirect("/charities/#{Charity.find_by(name: "MS Australia").id}")
  #  get "onemillionwomen", to: redirect("/charities/#{Charity.find_by(name: "1 Million Women").id}")
  #  get "1millionwomen", to: redirect("/charities/#{Charity.find_by(name: "1 Million Women").id}")
  
  get "ethicalpower", to: redirect("/switches/ethical_power")
  get "ethical-power", to: redirect("/switches/ethical_power")
  
  get "ethicalsuper", to: redirect("/switches/ethical_super")
  get "ethical-super", to: redirect("/switches/ethical_super")
  
  get "ethicalhomeloans", to: redirect("/switches/ethical_homeloans")
  get "ethical-homeloans", to: redirect("/switches/ethical_homeloans")
end