class StaticsController < ApplicationController
  def home
    @charities = Charity.where.not(short_name: "ASRC").where.not(short_name: "Portal Project").order("created_at DESC")
    
    assign_partner_variables
  end
  
  def terms_and_conditions
    
  end
  
  def privacy_policy
    
  end
end