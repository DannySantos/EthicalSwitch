class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :redirect_to_placeholder
  
  def redirect_to_placeholder
    redirect_to placeholder_path
  end
  
  def assign_partner_variables
    @powershop = Partner.find_by(name: "Powershop")
    @energy_locals = Partner.find_by(name: "Energy Locals")
    @diamond_energy = Partner.find_by(name: "Diamond Energy")
#    @australian_ethical = Partner.find_by(name: "Australian Ethical")
    @good_super = Partner.find_by(name: "Good Super")
    @future_super = Partner.find_by(name: "Future Super")
    @ethical_homeloans = Partner.find_by(name: "Ethical Homeloans")
  end

  def after_sign_in_path_for(resource)
    admin_path
  end
  
  def set_power_criteria(state_id)
    unless state_id.blank?
      @state = State.find(state_id)
      @power_providers = @state.power_providers.order(:sorting_order)
    else
      @power_providers = PowerProvider.all.order(:sorting_order)
    end
  end
end
