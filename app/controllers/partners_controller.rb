class PartnersController < ApplicationController
  def show
    @partner = Partner.find(params[:id])
    @message = Message.new if @partner.name == "Powershop"
    @faqs = Faq.all
  end
end