class CharitiesController < ApplicationController
  def show
    @charity = Charity.find(params[:id])
    @charities = Charity.all.current
    assign_partner_variables
    @faqs = Faq.all
    @switch = Switch.new
  end
end