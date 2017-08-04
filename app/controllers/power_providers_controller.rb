class PowerProvidersController < ApplicationController
  def index
    set_power_criteria(params[:state_id] || nil)
  end
  
  def change_state
    set_power_criteria(params[:state_id] || nil)
    
    respond_to do |format|
      format.js
    end
  end
end