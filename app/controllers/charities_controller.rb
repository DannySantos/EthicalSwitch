class CharitiesController < ApplicationController
  def show
    @charity = Charity.find(params[:id])
    assign_partner_variables
    @faqs = Faq.all
  end
end