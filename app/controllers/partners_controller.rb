class PartnersController < ApplicationController
  def show
    @partner = Partner.find(params[:id])
    @message = Message.new if @partner.name == "Powershop"
    @faqs = Tag.find_by(name: @partner.name).faqs
  end
end