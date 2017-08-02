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
end