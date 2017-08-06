class SubscribersController < ApplicationController
  def create
    @subscriber = Subscriber.create(subscriber_params)
    
    respond_to do |format|
      format.js
    end
  end
  
  private
  
  def subscriber_params
    params.require(:subscriber).permit(:email, :postcode)
  end
end