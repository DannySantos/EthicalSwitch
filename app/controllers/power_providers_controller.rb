class PowerProvidersController < ApplicationController
  def index
    @state = State.find(params[:state_id]) if params[:state_id]
    @power_providers = @state.power_providers if @state
  end
end