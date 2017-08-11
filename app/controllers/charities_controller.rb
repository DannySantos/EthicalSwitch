class CharitiesController < ApplicationController
  def show
    @charity = Charity.find(params[:id])
    @charities = Charity.all.currently_live
    assign_partner_variables
    @faqs = Tag.find_by(name: "Ethical Switch").faqs
    @switch = Switch.new
  end
end