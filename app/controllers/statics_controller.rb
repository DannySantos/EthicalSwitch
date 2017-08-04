class StaticsController < ApplicationController
  def home
    @charities = Charity.current.order("created_at DESC")
    @switch = Switch.new
    @states = State.all
    
    assign_partner_variables
  end
  
  def terms_and_conditions
    
  end
  
  def privacy_policy
    
  end
  
  def home_switch
    case params[:switch_type]
    when "power"
      redirect_to ethical_power_switches_path(state_id: params[:state_id])
    when "super"
      redirect_to ethical_super_switches_path(state_id: params[:state_id])
    when "homeloan"
      redirect_to ethical_homeloans_switches_path(state_id: params[:state_id])
    end
  end
end