class StaticsController < ApplicationController
  def home
    @charities = Charity.where.not(short_name: "ASRC").where.not(short_name: "Portal Project").order("created_at DESC")
  end
  
  def ethical_power
    
  end
  
  def ethical_super
    
  end
  
  def ethical_homeloans
    
  end
  
  def terms_and_conditions
    
  end
  
  def privacy_policy
    
  end
end