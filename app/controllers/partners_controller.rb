class PartnersController < ApplicationController
  def show
    @partner = Partner.find(params[:id])
    
    unless @partner.name == "Australian Ethical"
      @message = Message.new if @partner.name == "Powershop"
      @faqs = Tag.find_by(name: @partner.name).faqs
    else
      redirect_to root_path
    end
  end
end